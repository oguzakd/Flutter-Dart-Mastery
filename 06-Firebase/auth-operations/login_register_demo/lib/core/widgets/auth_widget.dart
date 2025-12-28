import 'package:flutter/material.dart';
import 'package:login_register_demo/view/home_page.dart';
import 'package:login_register_demo/view/sign_in_page.dart';

import '../model/my_app_user.dart';
import 'error_page.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key,required this.snapshot}) : super(key: key);
  final AsyncSnapshot<MyAppUser?> snapshot;

  @override
  Widget build(BuildContext context) {
    if(snapshot.connectionState == ConnectionState.active){
      return snapshot.hasData ? const HomePage():  SignInPage();
    }
    return ErrorPage();
  }
}