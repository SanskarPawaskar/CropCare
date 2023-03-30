import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Preharvesting extends StatefulWidget {
  const Preharvesting({Key? key}) : super(key: key);

  @override
  State<Preharvesting> createState() => _PreharvestingState();
}

class _PreharvestingState extends State<Preharvesting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pre-Harvesting',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          backgroundColor: Color(0xff004B20),
          leading: IconButton(
            icon: Icon(FeatherIcons.chevronLeft, size: 30, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                width: 318,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF1FFBA),
                    border: Border.all(
                      color: Color(0xff004B20),
                    )),
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                        width: 253,
                        height: 109,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(5, 4),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Crop \nRecomendation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff004B20),
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                        width: 253,
                        height: 109,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(5, 4),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Fertilizer \nRecommendation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff004B20),
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ]),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/bottom_logo.png'),
                  SizedBox(width: 15),
                  Text("Krishivalah",
                      style: TextStyle(
                        height: 1,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        color: Color(0xff004B20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
