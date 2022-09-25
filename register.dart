import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/signin.jpg'),
              fit: BoxFit.cover,
              opacity: 50)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60, top: 110),
              child: Text(
                'KloudKraft',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AveriaSerifLibre'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 140, top: 200),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Montserrat'),
              ),
            ),

              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.33,
                    right: 35,
                    left: 35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: _emailTextController,
                        style: TextStyle(fontFamily: 'Montserrat'),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        style: TextStyle(fontFamily: 'Montserrat'),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: _passwordTextController,
                        obscureText: true,
                        style: TextStyle(fontFamily: 'Montserrat'),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.black45,
                            child: IconButton(
                              onPressed: () {
                                FirebaseAuth.instance.createUserWithEmailAndPassword(email:_emailTextController.text, password:_passwordTextController.text)
                                    .then((value){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder:(context) => home()));
    }).onError((error, stackTrace){
    print("error ${error.toString()}");
                                });


                              },
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 125),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ))
                            ],
                          ))
                    ],
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
