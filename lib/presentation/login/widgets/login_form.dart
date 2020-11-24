import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/auth/login/login_bloc.dart';
import 'package:sales_app/domain/auth/auth_failure.dart';
import 'package:sales_app/presentation/core/dialogs/error_dialog.dart';
import 'package:sales_app/presentation/themes/colors.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      state.maybeWhen(
        signInSuccess: () {},
        signInFailure: (AuthFailure failure) => _mapFailure(context, failure),
        recoverPasswordSuccess: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: [
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Dismiss"),
              )
            ],
            title: const Text("Recovery email sent!"),
            content: const Text("The recovery email was sent to your email!"),
          ),
        ),
        recoverPasswordFailure: (AuthFailure failure) =>
            _mapFailure(context, failure),
        orElse: () {},
      );
    }, builder: (context, state) {
      bool signInInProgress;

      state.maybeWhen(
        signInInProgress: () {
          signInInProgress = true;
        },
        orElse: () => signInInProgress = false,
      );

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(),
                ),
                validator: _validateEmail,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_passwordFocusNode),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => _validateAndSendForm(context),
                decoration: const InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.more_horiz),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value.isEmpty) return 'Please enter a password';

                  return null;
                },
                obscureText: true,
              ),
              if (signInInProgress)
                const LinearProgressIndicator()
              else
                Container(),
              Center(
                child: FlatButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(
                          LoginEvent.forgotPasswordButtonPressed(
                            email: _emailController.text,
                          ),
                        );
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.black38, fontSize: 10.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () => _validateAndSendForm(context),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  void _mapFailure(BuildContext context, AuthFailure failure) => failure.when(
        unknownError: (e, s, message, code) => _showErrorDialog(
          context: context,
          message: unknownErrorMessage,
          exception: e,
          code: code,
        ),
        emailNotExists: () => _showSnackbar(
          context: context,
          message: emailNotExistsMessage,
        ),
        wrongPassword: () => _showSnackbar(
          context: context,
          message: wrongPasswordMessage,
        ),
        invalidEmail: () => _showSnackbar(
          context: context,
          message: invalidEmailMessage,
        ),
        userDisabled: () => _showSnackbar(
          context: context,
          message: userDisabledMessage,
        ),
        noServerResponse: () => _showErrorDialog(
          context: context,
          message: noServerResponseMessage,
        ),
      );

  void _showSnackbar({
    @required BuildContext context,
    @required String message,
  }) =>
      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: errorColor,
        content: Text(message),
      ));

  void _showErrorDialog({
    @required BuildContext context,
    @required String message,
    exception,
    int code,
  }) =>
      showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          message: message,
          exception: exception,
          code: code,
        ),
      );

  void _validateAndSendForm(BuildContext context) {
    if (_formKey.currentState.validate()) {
      context.read<LoginBloc>().add(
            LoginEvent.signInButtonPressed(
              email: _emailController.text,
              password: _passwordController.text,
            ),
          );
    }
  }

  String _validateEmail(String email) {
    if (email.isEmpty) return 'Please enter an email';

    final regExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,6}$");

    if (!regExp.hasMatch(email)) return 'Please enter a valid email';

    return null;
  }
}

const String unknownErrorMessage =
    "An unknown error ocurred please try again later. If this error keeps happening please get in contact with the MPower software team";
const String noServerResponseMessage =
    "We were not able to make a stable connection to the server. Please find a more stable internet connection and try again.";
const String emailNotExistsMessage =
    "Email not registered. Try with a different one";
const String wrongPasswordMessage =
    "The combination of email & password is wrong. Try again";
const String invalidEmailMessage = "The email you entered is invalid";
const String userDisabledMessage = "Sorry your user was disabled by an Admin";
