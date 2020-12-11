import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/customers/creation/customer_creation_bloc.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/core/dialogs/failure_dialog.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomerCreationBloc>(
        create: (context) => getIt<CustomerCreationBloc>(),
        child: BlocConsumer<CustomerCreationBloc, CustomerCreationState>(
          listener: (context, state) {
            state.when(
              initialStep: () {},
              creationFailure: (failure) {
                showDialog(
                  context: context,
                  builder: (_) =>
                      FailureDialog(messages: failure.defaultErrorMessages),
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
          },
          builder: (context, state) {
            bool isButtonLoading = false;

            state.when(
              initialStep: () {},
              creationFailure: (failure) {},
              creationInProgress: () => isButtonLoading = true,
              creationSuccess: () {},
            );

            return Scaffold(
              key: _scaffoldKey,
              appBar: AppBar(
                title: const Text("Customer creation"),
                centerTitle: true,
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        context.read<CustomerCreationBloc>().add(
                              CustomerCreationEvent.saveButtonPressed(
                                customerName: _nameController.text,
                                customerSurname: _surnameController.text,
                                countryCode: _countryCodeController.text,
                                phoneNumber: _phoneNumberController.text,
                              ),
                            );
                      }
                    },
                    child: isButtonLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Row(
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
                          ),
                  ),
                ],
              ),
              body: CustomerCreationForm(
                formKey: _formKey,
                nameController: _nameController,
                surnameController: _surnameController,
                countryCodeController: _countryCodeController,
                phoneNumberController: _phoneNumberController,
              ),
            );
          },
        ));
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
