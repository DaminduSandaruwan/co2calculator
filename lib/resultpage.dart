import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final double num1,
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
      perDay;

  ResultPage(
      this.num1,
      this.num2,
      this.num3,
      this.sum,
      this.diameter,
      this.weight,
      this.hdw,
      this.greenWeight,
      this.dryWeight,
      this.carbonAmount,
      this.carbonComposition,
      this.carbonQuantity,
      this.co2SequestratedAmountPerYear,
      this.co2SequestratedAmountPerYearInKg,
      this.perDay);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      // appBar: AppBar(),
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
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'THE CO2 SEQURSTRATED AMOUNT IN A TREE PER DAY IS ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.wendyOne(
                        textStyle: TextStyle(
                          fontFamily: 'Sensi',
                          fontSize: 22,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "${widget.perDay.toString().substring(0, 5)}",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                      // Text(

                      //   "Output (perday): ${widget.perDay.toString().substring(0,5)}",
                      //   style: TextStyle(
                      //       fontSize: 20.0,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.purple),
                      // ),
                      SizedBox(height: 20),
                      // Divider(color: Colors.black,),
                      // SizedBox(height: 20),
                      // Text(
                      //   "Height Of The Tree : ${widget.num1.toString()}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "Circumstance Of The Tree : ${widget.num2.toString()}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "Age Of The Tree : ${widget.num3.toString()}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "diameter : ${widget.diameter.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "weight : ${widget.weight.toString()}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "hdw : ${widget.hdw.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "greenWeight : ${widget.greenWeight.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "dryWeight : ${widget.dryWeight.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "carbonAmount : ${widget.carbonAmount.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "carbonComposition : ${widget.carbonComposition}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "carbonQuantity : ${widget.carbonQuantity.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "co2SequestratedAmountPerYear : ${widget.co2SequestratedAmountPerYear.toString().substring(0,5)}",
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "co2SequestratedAmountPerYearInKg : ${widget.co2SequestratedAmountPerYearInKg.toString().substring(0,5)}",
                      // ),
                      SizedBox(height: 20),
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
                                  "Go Back",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                // color: Colors.greenAccent,
                                onPressed:(){
                                  Navigator.pop(context);
                                },
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
      ),
    );
  }
}
