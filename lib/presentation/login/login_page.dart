import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_app/application/auth/login/login_bloc.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/login/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 72.0),
          _buildLogo(),
          const SizedBox(height: 32.0),
          BlocProvider(
            create: (context) => getIt<LoginBloc>(),
            child: LoginForm(),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() => SizedBox(
        height: 72.0,
        child: Center(
          child: SvgPicture.asset('assets/icons/logo.svg'),
        ),
      );
}

// switch (snapshot.data) {
//                     case AuthState.LOADING:
//                       return Padding(
//                         padding: EdgeInsets.only(top: 16.0),
//                         child: SizedBox(
//                           height: 20.0,
//                           width: 20.0,
//                           child: CircularProgressIndicator(
//                             strokeWidth: 2.0,
//                           ),
//                         ),
//                       );
//                     case AuthState.SUCCESS:
//                       utils.pushReplacement(
//                           context,
//                           BlocProvider<InitBloc>(
//                             initBloc: (_, bloc) => bloc ?? InitBloc(),
//                             onDispose: (_, bloc) => bloc.dispose(),
//                             child: InitPage(),
//                           ));
//                       break;
//                     case AuthState.ERROR:
//                       utils.showSnackbar(
//                           scaffoldKey: _scaffoldKey,
//                           message: 'There was a problem logging you in');
//                       return FlatButton(
//                         key: Key(SUBMIT_BUTTON_KEY),
//                         onPressed: () => _signIn(loginBloc),
//                         textColor: secondaryMain,
//                         child: Text(translations.translate('Submit')),
//                       );
//                       break;
//                     case AuthState.DENIED:
//                       utils.showSnackbar(
//                           scaffoldKey: _scaffoldKey,
//                           message:
//                               'Access denied. Admins can not use the mobile app');
//                       return FlatButton(
//                         key: Key(SUBMIT_BUTTON_KEY),
//                         onPressed: () => _signIn(loginBloc),
//                         textColor: secondaryMain,
//                         child: Text(translations.translate('Submit')),
//                       );
//                       break;
//                     default:
//                       return FlatButton(
//                         key: Key(SUBMIT_BUTTON_KEY),
//                         onPressed: () => _signIn(loginBloc),
//                         textColor: secondaryMain,
//                         child: Text(translations.translate('Submit')),
//                       );
//                   }
//                   return Container();
//                 }
