import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sales_app/presentation/customers/creation/widgets/customer_creation_form.dart';

class CustomerCreationPage extends StatefulWidget {
  @override
  _CustomerCreationPageState createState() => _CustomerCreationPageState();
}

class _CustomerCreationPageState extends State<CustomerCreationPage> {
  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
      body: CustomerCreationForm(formKey: _formKey),
    );
  }
}
