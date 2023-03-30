import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CropRecomendation extends StatefulWidget {
  const CropRecomendation({Key? key}) : super(key: key);

  @override
  State<CropRecomendation> createState() => _CropRecomendationState();
}

class _CropRecomendationState extends State<CropRecomendation> {
// Widget for creating text field with description
  Widget textFieldWithDescriptionCreator(
      double width, double height, String hintText, String description) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff004B20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: width,
            height: height,
            child: TextField(
              decoration: InputDecoration(
                  hintText: hintText,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Color(0xff004B20))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff004B20), width: 100),
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // Function for creating text field with description
  Widget textFieldCreator(double width, double height, String hintText) {
    return Container(
      width: width,
      height: height,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Color(0xff004B20))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff004B20), width: 100),
                borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Crop Recomendation',
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
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                  height: 480,
                  width: 318,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff004B20)),
                      color: Color(0xffF2FFBB),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      textFieldWithDescriptionCreator(
                          280, 50, "Enter Nitrogen Value", "Nitrogen"),
                      SizedBox(
                        height: 15,
                      ),
                      textFieldWithDescriptionCreator(
                          280, 50, "Enter Phosphorus Value", "Phosphorus"),
                      SizedBox(
                        height: 15,
                      ),
                      textFieldWithDescriptionCreator(
                          280, 50, "Enter Potassium Value", "Potassium"),
                      SizedBox(
                        height: 15,
                      ),
                      textFieldWithDescriptionCreator(
                          280, 50, "Enter pH Value", "pH"),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
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
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
