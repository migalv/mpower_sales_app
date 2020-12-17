import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/customers/creation/customer_creation_bloc.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/core/dialogs/failure_dialog.dart';
import 'package:sales_app/presentation/core/failure_widgets/default_failure_widget.dart';
import 'package:sales_app/presentation/core/widgets/app_bar_loading_indicator.dart';
import 'package:sales_app/presentation/customers/creation/widgets/customer_creation_form.dart';

class CustomerCreationPage extends StatefulWidget {
  @override
  _CustomerCreationPageState createState() => _CustomerCreationPageState();
}

class _CustomerCreationPageState extends State<CustomerCreationPage> {
  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _countryCodeController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final _documentTypes = <DocumentType>[];
  final Map<String, TextEditingController> _documentTypesContollers = {};

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomerCreationBloc>(
      create: (context) => getIt<CustomerCreationBloc>()
        ..add(const CustomerCreationEvent.loadRequested()),
      child: BlocConsumer<CustomerCreationBloc, CustomerCreationState>(
        listener: _blocListener,
        builder: (context, state) {
          bool isButtonLoading = false;
          bool isFormLoading = false;
          bool didLoadFail = false;
          List<String> errorMessages;

          state.when(
            loadInProgress: () {
              isButtonLoading = true;
              isFormLoading = true;
            },
            loadFailed: (messages) {
              errorMessages = messages;
              didLoadFail = true;
            },
            initialStep: (documentTypes) {
              _documentTypes.addAll(documentTypes);
              for (final docType in documentTypes) {
                _documentTypesContollers[docType.key] = TextEditingController();
              }
            },
            creationFailure: (failure) {},
            creationInProgress: () => isButtonLoading = true,
            creationSuccess: () {},
          );

          return Scaffold(
            key: _scaffoldKey,
            appBar: _buildAppBar(isButtonLoading),
            body: isFormLoading
                ? const Center(child: CircularProgressIndicator())
                : didLoadFail
                    ? _buildFailureWidget(errorMessages)
                    : CustomerCreationForm(
                        formKey: _formKey,
                        nameController: _nameController,
                        surnameController: _surnameController,
                        countryCodeController: _countryCodeController,
                        phoneNumberController: _phoneNumberController,
                        documentTypes: _documentTypes,
                        documentTypesControllers: _documentTypesContollers,
                      ),
          );
        },
      ),
    );
  }

  void _blocListener(BuildContext context, CustomerCreationState state) {
    state.when(
      loadFailed: (_) {},
      loadInProgress: () {},
      initialStep: (_) {},
      creationFailure: (failure) {
        showDialog(
          context: context,
          builder: (_) => FailureDialog(messages: failure.defaultErrorMessages),
        );
      },
      creationInProgress: () {},
      creationSuccess: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            "Customer created sucessfully. Don't forget to upload it!",
          ),
          action: SnackBarAction(
            label: "UPLOAD",
            onPressed: () {
              throw UnimplementedError();
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(bool isButtonLoading) {
    final buttonWidget = Row(
      children: const [
        Text(
          'SAVE',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 8.0),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 16.0,
        ),
      ],
    );

    return AppBar(
      title: const Text("Customer creation"),
      centerTitle: true,
      actions: <Widget>[
        FlatButton(
          onPressed: _saveForm,
          child:
              isButtonLoading ? const AppBarLoadingIndicator() : buttonWidget,
        ),
      ],
    );
  }

  Widget _buildFailureWidget(List<String> errorMessages) => Center(
        child: DefaultFailureWidget(messages: errorMessages),
      );

  // METHODS
  void _saveForm() {
    if (_formKey.currentState.validate()) {
      final event = CustomerCreationEvent.saveButtonPressed(
        customerName: _nameController.text,
        customerSurname: _surnameController.text,
        countryCode: _countryCodeController.text,
        phoneNumber: _phoneNumberController.text,
      );

      context.read<CustomerCreationBloc>().add(event);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _countryCodeController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }
}
