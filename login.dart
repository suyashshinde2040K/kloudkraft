import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/signin.jpg'),fit: BoxFit.cover,opacity:50)),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left:60, top:110),
            child: Text('KloudKraft', style: TextStyle(
              color: Colors.white,fontSize:50,
              fontWeight: FontWeight.w400,
              fontFamily:'AveriaSerifLibre'
            ),
            ),

          ),

          Container(
              padding: EdgeInsets.only(left:155, top:230),
              child: Text('SIGN IN', style: TextStyle(
                  color: Colors.white,fontSize:25,fontFamily:'Montserrat'
              ),
              ),

            ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.33,
              right: 35,
              left: 35),
              child: Column(
                children: [
                  TextField(
style: TextStyle(
  fontFamily: 'Montserrat'
),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,

                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: 'Montserrat'
                    ),
                    decoration: InputDecoration(

                      fillColor:  Colors.white,
                      filled: true,
                      hintText: 'Password',

                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                      )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: (){}, child: Text('Forgot Password?', style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize:16,
                      color: Colors.white,
                  ),
                  )
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
                        child: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_rounded,
                          size:30,
                        ),
                      ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),


                ],
              ),
            ),
          )


        ],
      ),
    ),);
  }
}
