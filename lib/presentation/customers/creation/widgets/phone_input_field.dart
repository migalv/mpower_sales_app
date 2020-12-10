import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Text Field that only accepts phone numbers.
///
/// Comes with country code in a separate text field
class PhoneInputField extends StatelessWidget {
  final TextEditingController codeController;
  final TextEditingController phoneController;
  final _numberRegExp = RegExp('^[0-9/]*\$');

  final _phoneMaskFormatter = MaskTextInputFormatter(
    mask: '### ## ## ##',
    filter: {"#": RegExp("[0-9]")},
  );

  PhoneInputField({
    Key key,
    this.codeController,
    this.phoneController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: TextFormField(
              controller: codeController,
              validator: (value) {
                final bool match = _numberRegExp.hasMatch(value);
                if (value.isEmpty) {
                  return 'This field is mandatory';
                } else if (value.length != 3) {
                  return 'Minimum length is 3';
                } else if (value.isNotEmpty && !match) {
                  return 'Invalid code';
                }

                return null;
              },
              maxLength: 3,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '260',
                labelText: 'Code',
                prefixText: '+',
              ),
              inputFormatters: [NoSpacesInputFormatter()],
            ),
          ),
          Container(
            width: 24.0,
          ),
          Flexible(
            flex: 2,
            child: TextFormField(
              controller: phoneController,
              validator: (value) {
                if (value.isNotEmpty && !_numberRegExp.hasMatch(value)) {
                  return 'Enter a valid phone number';
                } else if (value.length < 9) {
                  return 'Minimum length is 9';
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone",
                  hintText: "62894841598"),
              inputFormatters: [_phoneMaskFormatter],
            ),
          ),
        ],
      ),
    );
  }
}

class NoSpacesInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text == '${oldValue.text} ') return oldValue;
    return newValue;
  }
}
