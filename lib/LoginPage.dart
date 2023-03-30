import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LgoinPage extends StatefulWidget {
  const LgoinPage({Key? key}) : super(key: key);

  @override
  State<LgoinPage> createState() => _LgoinPageState();
}

class _LgoinPageState extends State<LgoinPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Center(
                  child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                Text("Krishivalah",
                    style: TextStyle(
                      height: 1,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                      color: Color(0xff004B20),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: 280,
                    height: 450,
                    decoration: BoxDecoration(
                        color: Color(0xffF2FFBB),
                        border: Border.all(color: Color(0xff004B20)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 235,
                          height: 49,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "E-mail Address",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xff004B20))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff004B20), width: 100),
                                    borderRadius: BorderRadius.circular(15)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //Password Input Field
                        SizedBox(
                          width: 235,
                          height: 49,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    borderSide:
                                        BorderSide(color: Color(0xff004B20))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff004B20), width: 100),
                                    borderRadius: BorderRadius.circular(15)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(child: SizedBox()),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xff004B20),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                      fontSize: 13),
                                ))
                          ],
                        ),

                        SizedBox(
                          height: 50,
                        ),
                        //Login Button
                        SizedBox(
                          height: 44,
                          width: 211,
                          child: ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff004B20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont have an Account?",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff004B20),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Color(0xff004B20),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                      fontSize: 13),
                                ))
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Or Sign In with",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextButton(
                          onPressed: () {},
                          child: Image.asset("assets/images/google.png")),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextButton(
                          onPressed: () {},
                          child: Image.asset("assets/images/facebook.png")),
                    ),
                  ],
                ),
                Image.asset('assets/images/grass.png')
              ])),
            )));
  }
}
