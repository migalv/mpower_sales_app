import 'package:flutter/material.dart';
import 'package:sales_app/presentation/core/widgets/tip_card.dart';
import 'package:sales_app/presentation/customers/creation/widgets/phone_input_field.dart';
import 'package:sales_app/presentation/customers/creation/widgets/text_input_field.dart';

class CustomerCreationForm extends StatefulWidget {
  const CustomerCreationForm({
    Key key,
    @required GlobalKey<FormState> formKey,
    this.textFieldSeparation = 16.0,
    @required this.nameController,
    @required this.surnameController,
    @required this.countryCodeController,
    @required this.phoneNumberController,
  })  : _formKey = formKey,
        super(key: key);

  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController countryCodeController;
  final TextEditingController phoneNumberController;

  final GlobalKey<FormState> _formKey;

  final double textFieldSeparation;

  @override
  _CustomerCreationFormState createState() => _CustomerCreationFormState();
}

class _CustomerCreationFormState extends State<CustomerCreationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: ListView(
        children: [
          const TipCard(
              tip:
                  'To create a customer, enter a valid Name, Surname & Phone number.\n\nThen tap on "NEXT"'),
          TextInputField(
            controller: widget.nameController,
            label: "Name",
            validator: (value) {
              if (value.isEmpty) {
                return 'This field is mandatory';
              } else if (value.length < 3) return 'Minimum length is 3';
              return null;
            },
          ),
          SizedBox(height: widget.textFieldSeparation),
          TextInputField(
            controller: widget.surnameController,
            label: "Surname",
            validator: (value) {
              if (value.isEmpty) {
                return 'This field is mandatory';
              } else if (value.length < 3) return 'Minimum length is 3';
              return null;
            },
          ),
          SizedBox(height: widget.textFieldSeparation),
          PhoneInputField(
            codeController: widget.countryCodeController,
            phoneController: widget.phoneNumberController,
          ),
        ],
      ),
    );
  }
}
