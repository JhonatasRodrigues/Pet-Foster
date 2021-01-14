import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.lightBlue[700],
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFE3F2FD),
                    Color(0xFF64B5F6),
                  ],
                ),
              ),
        padding: EdgeInsets.only(
          top: 60, left: 40, right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200, height: 100, 
              child: Image.asset("assets/key.png"),
            ),
            SizedBox(
              height: 0.8,
            ),
            Text("Esqueceu sua Senha?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600, color: Colors.lightBlue, 
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Informe seu e-mail cadastrado, enviaremos um link para você recadastrar sua senha.   Não recebeu nosso e-mail? Entre em Contato.",
              style: TextStyle(
                fontSize:17,
                fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}