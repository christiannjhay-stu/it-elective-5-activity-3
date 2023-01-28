import 'package:activity3/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Username or email',
            hintStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      )
    ],
  );
}


Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.white,

            )
          ),
        )
      )
    ],
  );
}

Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(left: 180),
      child: TextButton(
        onPressed: () => print("Forgot Password?"),
        child: Text(
          'Forgot your Password?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            letterSpacing: 1.2,

          ),
        )
      ),
  );
}



Widget orLogin() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 20),
      child: Text(
        'or log in with',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 1.2
        ),
      )
  );
}
Widget SignUp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: Text(
          "Don't have an account?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            letterSpacing: 1.2
          ),
        ),
      ),
      Container(

        child: TextButton(
          onPressed: () => print("SignUp"),
          child: Text(
            'Signup',
            style: TextStyle(
              color: Color.fromARGB(246, 255, 208, 0),
              fontSize: 10,
              letterSpacing: 1.2,

            ),
          )
        ),

      )
    ],
  );
}
Widget Footer() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 20),
      child: Text(
        textAlign: TextAlign.center,
        'By using DuoLingo you agree to our Term of Service and\nPrivacy Policy.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          letterSpacing: 1.2
        ),
      )

  );
}

Widget LoginWith() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {
          print("Log In with facebook");
        },
        child: new Container(
          child: Ink(
            decoration: BoxDecoration(
              color: const Color(0xff3A4859),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
            ),
            child: SvgPicture.asset("assets/images/facebook.svg"),
            width: 113,
            height: 60,
            padding: EdgeInsets.all(15),
          ),
        ),
      ),

      SizedBox(width: 1),
      InkWell(
        onTap: () {
          print("Log In with google");
        },
        child: new Container(
          child: Ink(
            decoration: BoxDecoration(
              color: const Color(0xff3A4859),
            ),
            child: SvgPicture.asset("assets/images/gmail.svg"),
            width: 113,
            height: 60,
            padding: EdgeInsets.all(15),
          ),
        ),
      ),

      SizedBox(width: 1),
      InkWell(
        onTap: () {
          print("Log In with twitter");
        },
        child: new Container(
          child: Ink(
            decoration: BoxDecoration(
              color: const Color(0xff3A4859),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
            ),
            child: SvgPicture.asset("assets/images/twitter.svg"),
            width: 113,
            height: 60,
            padding: EdgeInsets.all(15),

          ),
        ),
      ),
    ],
  );
}
Widget buildFirstName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Firstname',
            hintStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      )
    ],
  );
}
Widget buildLastName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Lastname',
            hintStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      )
    ],
  );
}
Widget buildSEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Email Address',
            hintStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      )
    ],
  );
}
Widget buildSUsername() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Username',
            hintStyle: TextStyle(
              color: Colors.white,
            )
          ),
        )
      )
    ],
  );
}
Widget buildSPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.white,

            )
          ),
        )
      )
    ],
  );
}

Widget buildConfirmPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: < Widget > [
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xff3A4859),
            borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: 340,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            hintText: 'Confirm Password',
            hintStyle: TextStyle(
              color: Colors.white,

            )
          ),
        )
      )
    ],
  );
}


class _LoginScreenState extends State < LoginScreen > {
  static
  const appTitle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion < SystemUiOverlayStyle > (
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: < Widget > [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: < Widget > [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                        child: Text(
                          'duoLingo\n\n Login to\nyour Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Noopla",
                          ),
                        ),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    buildPassword(),
                    buildForgotPassBtn(),
                    Container(
                      width: 340,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return MyHomePage(title: appTitle);
                          }));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll < Color > (Color.fromARGB(255, 251, 183, 24)),
                          shape: MaterialStateProperty.all < RoundedRectangleBorder > (
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            )
                          )
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Noopla"
                          ),

                        ),
                      ),
                    ),
                    orLogin(),
                    SizedBox(height: 12),
                    LoginWith(),
                    SizedBox(height: 20),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1.2
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                return SignUpScreen();
                              }));
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                color: Color.fromARGB(246, 255, 208, 0),
                                fontSize: 10,
                                letterSpacing: 1.2,

                              ),
                            )
                          ),
                        )
                      ],
                    ),
                    Footer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

class _SignUpScreenState extends State < SignUpScreen > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion < SystemUiOverlayStyle > (
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: < Widget > [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: < Widget > [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                        child: Text(
                          'duoLingo\nCreate Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Noopla",
                          ),
                        ),
                    ),
                    SizedBox(height: 5),
                    buildFirstName(),
                    buildLastName(),
                    buildSEmail(),
                    buildSUsername(),
                    buildSPassword(),
                    buildConfirmPassword(),
                    SizedBox(height: 12),
                    Container(
                      width: 340,
                      height: 60,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                           return LoginScreen();
                           }));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll < Color > (Color(0xffFBB718)),
                          shape: MaterialStateProperty.all < RoundedRectangleBorder > (
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            )
                          )
                        ),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Noopla"
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 1.2
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                return LoginScreen();
                              }));
                            },
                            child: Text(
                              'Login Here',
                              style: TextStyle(
                                color: Color.fromARGB(246, 255, 208, 0),
                                fontSize: 10,
                                letterSpacing: 1.2,

                              ),
                            )
                          ),

                        )
                      ],
                    ),
                    Footer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}