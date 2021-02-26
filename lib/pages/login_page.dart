import 'package:pet_foster/pages/reset_password_page.dart';
import 'package:pet_foster/pages/signup_page.dart';
import 'package:pet_foster/pages/home_page.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/PetFoster-logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide: new BorderSide(color: Colors.blueGrey),
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha", //Password
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide: new BorderSide(color: Colors.blueGrey),
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.5, 10],
                  colors: [
                    Color(0xFF64B5F6),
                    Color(0xFFE3F2FD),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/pawblue.png"),
                          height: 60,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 60,
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //     color: Color(0xFF3C5A99),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5),
            //     ),
            //   ),
            // child: SizedBox.expand(
            // child: FlatButton(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text(
            //         "Login com Facebook", //login with facebook
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white,
            //           fontSize: 20,
            //         ),
            //         textAlign: TextAlign.left,
            //       ),
            //       Container(
            //         child: SizedBox(
            //           child: Image.asset("assets/fb.png"),
            //           height: 28,
            //           width: 28,
            //         ),
            //       ),
            //     ],
            //   ),
            //   onPressed: () {},
            // ),
            // ),
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: FlatButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.center, //recover password
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reset_Password_Page(),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se", //Register/sing up
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup_Page(),
                    ),
                  );
                }, //anonymous function
              ),
            ),
          ],
        ),
      ),
    );
  }
}