import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class REgisterPage extends StatefulWidget {
  const REgisterPage({Key? key}) : super(key: key);

  @override
  State<REgisterPage> createState() => _REgisterPageState();
}

class _REgisterPageState extends State<REgisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
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
                  height: 462,
                  decoration: BoxDecoration(
                      color: Color(0xffF2FFBB),
                      border: Border.all(color: Color(0xff004B20)),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      //Username Input Field
                      SizedBox(
                        width: 235,
                        height: 49,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Username",
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
                        height: 15,
                      ),
                      //Email Input Field
                      SizedBox(
                        width: 235,
                        height: 49,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
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
                        height: 15,
                      ),
                      //Password Input Field
                      SizedBox(
                        width: 235,
                        height: 49,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: "Contact No",
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
                        height: 15,
                      ),
                      //Confrim Password Input Field
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
                      SizedBox(
                        height: 25,
                      ),
                      //Register Button
                      SizedBox(
                        height: 44,
                        width: 211,
                        child: ElevatedButton(
                            onPressed: () async {
                              //Give route to loing page
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => const LoginScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff004B20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            child: Text(
                              "Register",
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
                      // Already have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alreday have an Account?",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff004B20),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                //Give Route to login page
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const LoginScreen()),
                                // );
                              },
                              child: Text(
                                "Login",
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
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Or Sign Up with",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 10,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
