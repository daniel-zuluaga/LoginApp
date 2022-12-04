import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/widgets/button_check_in.dart';
import 'package:login_app/widgets/text_field_form.dart';

class LoginPage extends StatefulWidget {
  static String id = "login_page";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool selectedLogin = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fast \n Food".toUpperCase(),
                textAlign: TextAlign.center,
                style: GoogleFonts.rubikMicrobe(
                  textStyle: const TextStyle(
                    fontSize: 55,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedLogin = true;
                      });
                    },
                    child: Text("Sign in", 
                      style: GoogleFonts.kaushanScript(
                        textStyle: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedLogin = false;
                      });
                    },
                    child: Text("login", 
                      style: GoogleFonts.kaushanScript(
                        textStyle: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              (selectedLogin) ? _columnSignup() : _columnLogin(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return TextFieldGeneral(
      labelText: "Name", 
      hintText: "",
      iconTextField: Icon(Icons.person_outline), 
      onChanged: (value){}, 
      keyBoardType: TextInputType.text
    );
  }

  Widget _textFieldEmail() {
    return TextFieldGeneral(
      labelText: "Email", 
      hintText: "example@test.com",
      iconTextField: Icon(Icons.email_outlined), 
      onChanged: (value){}, 
      keyBoardType: TextInputType.emailAddress
    );
  }

  Widget _textFieldPassword() {
    return TextFieldPassword(
      labelText: "Password", 
      iconTextField: Icon(Icons.lock_outline), 
      onChanged: (value){},

    );
  }

  Widget _buttonSignIn() {
    return ButtonGeneral(labelText: 'Check in',);
  }

  Widget _buttonLogin() {
    return ButtonGeneral(labelText: 'Log in',);
  }

  Widget _columnSignup(){
    return Column(
      children: [
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

        const SizedBox(
          height: 40,
        ),

        _buttonSignIn(),

      ]
    );
  }
  
  Widget _columnLogin() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        _textFieldEmail(),
        const SizedBox(
          height: 15,
        ),
        _textFieldPassword(),

        const SizedBox(
          height: 50,
        ),

        _buttonLogin(),
      ],
    );
  }
}


