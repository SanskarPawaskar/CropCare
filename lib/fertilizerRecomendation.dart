import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FertilizerRecomendation extends StatefulWidget {
  const FertilizerRecomendation({Key? key}) : super(key: key);

  @override
  State<FertilizerRecomendation> createState() =>
      _FertilizerRecomendationState();
}

class _FertilizerRecomendationState extends State<FertilizerRecomendation> {
// Widget for creating text field with description

  Widget dropDownWithDescriptionCreator(
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
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff004B20))),
            child: DropdownButton<String>(
                value: "Select Crop",
                icon: const Icon(Icons.arrow_downward),
                onChanged: null,
                items: []),
          ),
        ],
      ),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Fertilizer Recommendation',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              backgroundColor: Color(0xff004B20),
              leading: IconButton(
                icon: Icon(FeatherIcons.chevronLeft,
                    size: 30, color: Colors.white),
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
                          dropDownWithDescriptionCreator(
                              280, 50, "Select Crop", "Crop Name"),
                          SizedBox(
                            height: 15,
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
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(
                                  "Predict",
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
                SizedBox(
                  height: 50,
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
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )));
  }
}
