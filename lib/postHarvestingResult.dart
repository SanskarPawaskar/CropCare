import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PostHarvestingResult extends StatefulWidget {
  const PostHarvestingResult({Key? key}) : super(key: key);

  @override
  State<PostHarvestingResult> createState() => _PostHarvestingResultState();
}

class _PostHarvestingResultState extends State<PostHarvestingResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Post Harvesting',
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
                height: 30,
              ),
              Center(
                child: Text(
                  "Yield Report",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff004B20),
                      fontWeight: FontWeight.bold),
                ),
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
                  Container(
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Expected Yield",
                                style: TextStyle(
                                  color: Color(0xff004B20),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "3000 Tonnes",
                          style: TextStyle(
                              color: Color(0xff004B20),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Actual Yield",
                                style: TextStyle(
                                  color: Color(0xff004B20),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "2700 Tonnes",
                          style: TextStyle(
                              color: Color(0xff004B20),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Loss",
                                style: TextStyle(
                                  color: Color(0xff004B20),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "300 Tonnes",
                          style: TextStyle(
                              color: Color(0xff004B20),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ]),
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
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
