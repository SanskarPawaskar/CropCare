import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class DiseaseDetection extends StatefulWidget {
  const DiseaseDetection({Key? key}) : super(key: key);

  @override
  State<DiseaseDetection> createState() => _DiseaseDetectionState();
}

class _DiseaseDetectionState extends State<DiseaseDetection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Disease Detection',
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
                height: 60,
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
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FeatherIcons.upload,
                          size: 40,
                          color: Color(0xff004B20),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Upload Image",
                            style: TextStyle(
                              height: 1,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              color: Color(0xff004B20),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                        width: 253,
                        height: 90,
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
                            "From Camera",
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
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                        width: 253,
                        height: 90,
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
                            "From Gallery",
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
                height: 70,
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
