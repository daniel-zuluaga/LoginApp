import 'package:flutter/material.dart';
import 'package:login_app/widgets/text_field_form.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fast \n Food".toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
                ),
              ),

              const SizedBox(
                height: 60,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("Sign in", 
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),

                  Text("login", 
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              _textFieldName(),
              const SizedBox(
                height: 15,
              ),
              _textFieldEmail(),
              const SizedBox(
                height: 15,
              ),
              _textFieldPassword(),

            ],
          ),
        ),
      ),
    );
  }
  
  _textFieldName() {
    return TextFieldGeneral(
      labelText: "Name", 
      hintText: "",
      iconTextField: Icon(Icons.person_outline), 
      onChanged: (value){}, 
      keyBoardType: TextInputType.text
    );
  }
  
  _textFieldEmail() {
    return TextFieldGeneral(
      labelText: "Email", 
      hintText: "example@test.com",
      iconTextField: Icon(Icons.email_outlined), 
      onChanged: (value){}, 
      keyBoardType: TextInputType.emailAddress
    );
  }
  
  _textFieldPassword() {
    return TextFieldGeneral(
      labelText: "Password", 
      hintText: "",
      iconTextField: Icon(Icons.lock_outline), 
      onChanged: (value){},
    );
  }
}

