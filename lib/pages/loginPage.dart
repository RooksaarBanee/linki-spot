import 'package:flutter/material.dart';
import 'homePage.dart';
import 'registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => LoginPageState();
  }

  class LoginPageState extends State<LoginPage>{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Center(
            child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              // Logo Linkispot
              Container(
                margin: const EdgeInsets.all(15),
                child : Image.asset(
                  'img/logo.png',
                  width: 150,
                ),
              ),

              // Title H1 : Linkispot
                Container(
                  margin: const EdgeInsets.all(10),
                  child : Text(
                    "Linkispot",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1.5,
                      color: Colors.orange[500],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              // Title H2 : Slogan
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child : Text(
                    "L'appli évènementielle préférée des community builders",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                // Email container
                  Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 8),
                  width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 5, 82, 145),
                        ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      maxLines: 1,
                      showCursor: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "E-mail",
                      ),
                    ),
                  ),

                // Password container
                  Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
                  padding: const EdgeInsets.only(left: 8),
                  width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 5, 82, 145),
                        ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      obscureText: true,
                      maxLines: 1,
                      showCursor: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mot de passe",
                      ),
                    ),
                  ),

                // Button Sign In
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                       },
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ),
                  ),

                // Register TextButton
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    "Vous n'avez pas de compte ?",
                    style: TextStyle(
                      color: Colors.grey[600],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ));
                      },
                      child: Text(
                      "Inscrivez-vous",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.orange[800],
                        ),
                      )
                    )
                  ],
                ),
              ]
            ),
          )
        )
      );
    }
  }