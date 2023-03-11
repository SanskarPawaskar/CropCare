import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CropPerdictionResult extends StatefulWidget {
  const CropPerdictionResult({Key? key}) : super(key: key);

  @override
  State<CropPerdictionResult> createState() => _CropPerdictionResultState();
}

class _CropPerdictionResultState extends State<CropPerdictionResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2FFBB),
        appBar: AppBar(
          title: Text(
            'Crop Prediction',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text(
                        "Crop Name : Rice",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            // fontFamily: 'Quicksand',
                            color: Color(0xff004B20),
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xff004B20), width: 3)),
                width: 290,
                height: 182,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    "assets/rice.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            // fontFamily: 'Quicksand',
                            color: Color(0xff004B20),
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "On the basis of soil nutrients and weather Condition we Recommend you to grew Rice.",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    overflow: TextOverflow.visible,
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff004B20)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                width: 315,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Resources",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                // fontFamily: 'Quicksand',
                                color: Color(0xff004B20),
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "1) Plant resistant potato varieties: There are potato varieties that are resistant to late blight. Check with your local agricultural extension service or seed supplier for recommendations.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "2) Practice crop rotation: Avoid planting potatoes in the same field for several years in a row. Rotate with crops that are not in the potato family, such as corn or beans.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "3) Monitor weather conditions: Late blight thrives in cool, moist conditions. ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
