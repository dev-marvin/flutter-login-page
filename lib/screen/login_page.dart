import 'package:flutter/material.dart';

import 'components/button_field.dart';
import 'components/input_text_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height/100 * 30,
                child: Icon(Icons.lock_outline, size: 200, color: Colors.white),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/100 * 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width, height: 20),
                    Text('AUTENTICAR', style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    InputTextField(hintText: 'E-MAIL'),
                    const SizedBox(height: 20),
                    InputTextField(hintText: 'SENHA', obacureText: true),
                    const SizedBox(height: 30),
                    ButtonField(text: 'ENTRAR'),
                    const SizedBox(height: 20),
                    ButtonField(text: 'REGISTRAR', primary: false),
                    const SizedBox(height: 30),
                    Text('LOGIN PAGE', style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}