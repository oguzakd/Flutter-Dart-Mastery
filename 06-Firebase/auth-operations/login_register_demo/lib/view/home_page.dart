import 'package:flutter/material.dart';
import 'package:login_register_demo/core/service/i_auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [IconButton(onPressed: (){
          _authService.signOut();
        }, icon: Icon(Icons.logout))],
      ),
    );
  }
}
