import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_register_demo/core/service/firebase_service.dart';
import 'package:login_register_demo/core/service/i_auth_service.dart';
import 'package:login_register_demo/view/home_page.dart';
import 'package:provider/provider.dart';

// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'core/model/my_app_user.dart';
import 'core/widgets/auth_widget.dart';
import 'core/widgets/auth_widget_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<IAuthService>(create: (_) => AuthService())],
      child: AuthWidgetBuilder(
        onPageBuilder:
            (BuildContext context, AsyncSnapshot<MyAppUser?> snapShot) =>
                MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AuthWidget(snapshot: snapShot,),
        ),
      ),
    );
  }
}
