import 'package:flutter/material.dart';
import 'package:login_register_demo/core/service/i_auth_service.dart';
import 'package:provider/provider.dart';


class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: mailController,
                decoration: const InputDecoration(
                  hintText: "E-mail adresi gir",
                ),
              ),
              SizedBox(height: 5,),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: "Şifre gir"
                ),
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
            SizedBox(height: 10,),
            MaterialButton(
              onPressed: (){
                _authService.createUserWithEmailAndPassword(email: mailController.text, password: passwordController.text);
              },
              color: Colors.blueAccent,
              child: Text("Kullanıcı Oluştur",style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}


