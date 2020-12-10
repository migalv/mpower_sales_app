import 'package:flutter/material.dart';
import 'package:sales_app/presentation/core/widgets/tip_card.dart';
import 'package:sales_app/presentation/customers/creation/widgets/phone_input_field.dart';
import 'package:sales_app/presentation/customers/creation/widgets/text_input_field.dart';

class CustomerCreationForm extends StatelessWidget {
  const CustomerCreationForm({
    Key key,
    @required GlobalKey<FormState> formKey,
    this.textFieldSeparation = 16.0,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  final double textFieldSeparation;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          const TipCard(
              tip:
                  'To create a customer, enter a valid Name, Surname & Phone number.\n\nThen tap on "NEXT"'),
          TextInputField(
            label: "Name",
            validator: (value) {
              if (value.isEmpty) {
                return 'This field is mandatory';
              } else if (value.length < 3) return 'Minimum length is 3';
              return null;
            },
          ),
          SizedBox(height: textFieldSeparation),
          TextInputField(
            label: "Surname",
            validator: (value) {
              if (value.isEmpty) {
                return 'This field is mandatory';
              } else if (value.length < 3) return 'Minimum length is 3';
              return null;
            },
          ),
          SizedBox(height: textFieldSeparation),
          PhoneInputField(),
        ],
      ),
    );
  }
}
