import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sales_app/presentation/core/widgets/tip_card.dart';
import 'package:sales_app/presentation/customers/creation/widgets/phone_input_field.dart';
import 'package:sales_app/presentation/customers/creation/widgets/text_input_field.dart';

class CustomerCreationPage extends StatefulWidget {
  static const _textFieldSeparation = 16.0;

  @override
  _CustomerCreationPageState createState() => _CustomerCreationPageState();
}

class _CustomerCreationPageState extends State<CustomerCreationPage> {
  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nameFieldFocusNode = FocusNode();
  final _surnameFieldFocusNode = FocusNode();
  final _phoneFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Customer creation"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                throw UnimplementedError();
              }
            },
            child: Row(
              children: const [
                Text(
                  'NEXT',
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
      body: Form(
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
              focusNode: _nameFieldFocusNode,
            ),
            const SizedBox(height: CustomerCreationPage._textFieldSeparation),
            TextInputField(
              label: "Surname",
              validator: (value) {
                if (value.isEmpty) {
                  return 'This field is mandatory';
                } else if (value.length < 3) return 'Minimum length is 3';
                return null;
              },
              focusNode: _surnameFieldFocusNode,
            ),
            const SizedBox(height: CustomerCreationPage._textFieldSeparation),
            PhoneInputField(
              focusNode: _phoneFieldFocusNode,
            ),
          ],
        ),
      ),
    );
  }
}
