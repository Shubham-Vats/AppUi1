import 'package:flutter/material.dart';
import 'main.dart';
import 'homepage.dart';


class IntroScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Intro.jpg"),
              fit: BoxFit.cover,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Enjoy every\nmoment with us!",
                  textAlign: TextAlign.center,
                  style: introScreenTextStyle,
                ),
              ),
              
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 75,
                  width: 280,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){
                      print("Successful SignIn!!");
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => HomePage(), 
                        )
                      );
                    },
                    // color: pinkColor,
                    color: Colors.redAccent,
                    child: Text("Sign In",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        // letterSpacing: 1
                      ),
                    ),
                  ),
                ),
              ),
              
              
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 40),
                child: GestureDetector(
                  onTap: () => print("Creating An Account!!"),  
                  child: Text("Create an account",
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.underline
                    ),
                  ),
                ),
              )
            ]
          ),
        )
      ),
    );
  }
}


