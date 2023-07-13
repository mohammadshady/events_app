import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components.dart';
import '../themes.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(
                      'Ucas Events',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 50,
                        color: defaultColor
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Welcome to back',
                      style: TextStyle(
                          fontSize: 15,
                          color: HexColor('#443F5D'),

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Login with',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: defaultColor,

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#040404'),

                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    defaultFormField(
                        type: TextInputType.phone,
                        text: 'Enter your phone',
                        controller: emailController,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#040404'),

                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    defaultFormField(
                      type: TextInputType.visiblePassword,
                      text: '* * * * * * * *',
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    defaultButton(
                      text: 'Sign in',
                      function: (){
                        Get.offAllNamed('/categories');
                      },
                    ),
                    SizedBox(height: 100,),

                  ],
                ),
              ),
            ),
          ),
    );
  }
}
