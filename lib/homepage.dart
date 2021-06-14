import 'package:co2calculator/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0,
      num2 = 0,
      num3 = 0,
      sum = 0,
      diameter = 0,
      weight = 0,
      hdw = 0,
      greenWeight = 0,
      dryWeight = 0,
      carbonAmount = 0,
      carbonComposition = 0,
      carbonQuantity = 0,
      co2SequestratedAmountPerYear = 0,
      co2SequestratedAmountPerYearInKg = 0,
      perDay = 0;

  final TextEditingController heightOfTheTree = TextEditingController();
  final TextEditingController circumstanceOfTheTree = TextEditingController();
  final TextEditingController ageOfTheTree = TextEditingController();

  void doAddition() {
    setState(() {
      num1 = double.parse(heightOfTheTree.text);
      num2 = double.parse(circumstanceOfTheTree.text);
      num3 = double.parse(ageOfTheTree.text);
      sum = num1 + num2 + num3;
      diameter = num2 / 3.14;
      weight = diameter < 11 ? 0.25 : 0.15;

      hdw = num1 * diameter * weight;
      greenWeight = hdw * 1.2;
      dryWeight = greenWeight * 0.725;
      carbonAmount = dryWeight * 0.5;
      carbonComposition = 3.6663;
      carbonQuantity = carbonAmount * carbonComposition;
      co2SequestratedAmountPerYear = carbonQuantity / num3;
      co2SequestratedAmountPerYearInKg =
          co2SequestratedAmountPerYear * 0.453592;
      perDay = co2SequestratedAmountPerYearInKg / 365;
    });
  }

  void doClear() {
    setState(() {
      heightOfTheTree.text = "";
      circumstanceOfTheTree.text = "";
      ageOfTheTree.text = "";

      num1 = 0;
      num2 = 0;
      num3 = 0;
      sum = 0;
      diameter = 0;
      weight = 0;
      hdw = 0;
      greenWeight = 0;
      dryWeight = 0;
      carbonAmount = 0;
      carbonComposition = 0;
      carbonQuantity = 0;
      co2SequestratedAmountPerYear = 0;
      co2SequestratedAmountPerYearInKg = 0;
      perDay = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      // appBar: AppBar(
      //   title: Text("CO2 Calculator"),
      // ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.green
          image: DecorationImage(
            image: AssetImage("assets/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(25)),
                height: MediaQuery.of(context).size.height - 100,
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CALCULATE THE CO2 SEQURSTRATED AMOUNT IN A TREE PER DAY',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.wendyOne(
                        textStyle: TextStyle(
                          fontFamily: 'Sensi',
                          fontSize: 22,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    // Text(
                    //   "Height Of The Tree : $num1",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "Circumstance Of The Tree : $num2",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "Age Of The Tree : $num3",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "diameter : $diameter",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "weight : $weight",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "hdw : $hdw",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "greenWeight : $greenWeight",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "dryWeight : $dryWeight",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "carbonAmount : $carbonAmount",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "carbonComposition : $carbonComposition",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "carbonQuantity : $carbonQuantity",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "co2SequestratedAmountPerYear : $co2SequestratedAmountPerYear",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "co2SequestratedAmountPerYearInKg : $co2SequestratedAmountPerYearInKg",
                    // ),
                    // SizedBox(height: 20),
                    // Text(
                    //   "Output perDay: $perDay",
                    //   style: TextStyle(
                    //       fontSize: 20.0,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.purple),
                    // ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: 'Height',
                        hintStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      controller: heightOfTheTree,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Circumference",
                        hintStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      controller: circumstanceOfTheTree,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Age",
                        hintStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      controller: ageOfTheTree,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 120, height: 120),
                          child: ElevatedButton(
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            onPressed: () {
                              doAddition();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultPage(
                                        num1,
                                        num2,
                                        num3,
                                        sum,
                                        diameter,
                                        weight,
                                        hdw,
                                        greenWeight,
                                        dryWeight,
                                        carbonAmount,
                                        carbonComposition,
                                        carbonQuantity,
                                        co2SequestratedAmountPerYear,
                                        co2SequestratedAmountPerYearInKg,
                                        perDay)),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        // MaterialButton(
                        //   child: Text("CALCULATE"),
                        //   color: Colors.greenAccent,
                        //   onPressed: () {
                        //     doAddition();
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => ResultPage(
                        //               num1,
                        //               num2,
                        //               num3,
                        //               sum,
                        //               diameter,
                        //               weight,
                        //               hdw,
                        //               greenWeight,
                        //               dryWeight,
                        //               carbonAmount,
                        //               carbonComposition,
                        //               carbonQuantity,
                        //               co2SequestratedAmountPerYear,
                        //               co2SequestratedAmountPerYearInKg,
                        //               perDay)),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow,
                            ),

                            child: Text(
                              "Clear",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            // color: Colors.greenAccent,
                            onPressed: doClear,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
