import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'field_decor.dart';

class AgeCalc extends StatefulWidget {
  const AgeCalc({super.key});

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  int yearsLeft = 0;

  final TextEditingController _nameController = TextEditingController();
  double _age = 0;

  void checkAge() {
    final name = _nameController.text;
    setState(() {
      yearsLeft = 100 - _age.toInt();
    });
  }

  List<Color> bgColors() {
    if (isVisible) {
      return [
        Color(0xfff8cabb),
        Color(0xffe3a795),
      ];
    }
    return [
      Color(0xfffafafa),
      Color(0xff606060),
    ];
  }

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: bgColors(),
          radius: 1,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Age Calculator',
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white70),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _nameController,
                    decoration:
                        textFieldMainDecoration("Name", "Enter Your Name"),
                    onChanged: (name) {
                      if (name.isEmpty) {
                        setState(() {
                          isVisible = false;
                        });
                      }
                      if (name.length > 2) {
                        setState(() {
                          isVisible = true;
                        });
                      } else if (name.length < 3) {
                        setState(() {
                          isVisible = false;
                        });
                      }
                    },
                  ),
                ),
                Visibility(
                  visible: !isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Enter Your Name To Proceed furhter",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: isVisible ? 100 : 0,
                ),
                Visibility(visible: isVisible, child: buildImages()),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            Visibility(visible: isVisible, child: buildSleekCircularSlider()),
      ),
    );
  }

  Widget buildImages() {
    final name = _nameController.text;
    return AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
      child: Builder(builder: (_) {
        if (_age == 0) {
          return Text(
            "Point to Your Age from below Slider",
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white70),
            textAlign: TextAlign.center,
          );
        }
        if (_age > 0 && _age <= 5) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/baby.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100,\n You are Still a Baby",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }
        if (_age >= 6 && _age <= 12) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/toddler.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100,\n You are Still a kid",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }
        if (_age > 12 && _age <= 20) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/boy.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100.",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }
        if (_age > 20 && _age <= 40) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/young_man.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100.",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }

        if (_age > 40 && _age <= 60) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/man.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100.",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }

        if (_age > 60 && _age < 100) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/old_man.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You Have ${100 - _age.toInt()} Years Left till 100.",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }

        if (_age == 100) {
          return Column(
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assets/old_man.png",
                    fit: BoxFit.contain,
                  )),
              Text(
                "$name, You are 100, Congratulations! 🎉🎉🎉🎉",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          );
          // return Text("Years left until 100 are ${yearsLeft}");
        }
        return SizedBox();
      }),
    );
  }

  SleekCircularSlider buildSleekCircularSlider() {
    return SleekCircularSlider(
        min: 0,
        max: 100,
        initialValue: 0,
        appearance: CircularSliderAppearance(
          customColors: CustomSliderColors(
            dotColor: Colors.white70,
            progressBarColors: [Colors.indigo.shade800, Colors.indigo],
            trackColors: [Colors.white70, Colors.white],
          ),
          animationEnabled: true,
          size: 250,
          customWidths: CustomSliderWidths(
              handlerSize: 5, progressBarWidth: 15, trackWidth: 10),
          infoProperties: InfoProperties(
            mainLabelStyle: GoogleFonts.poppins(
                fontSize: 55,
                fontWeight: FontWeight.w600,
                color: Colors.white70),
            modifier: (num) {
              return "${num.truncate()}";
            },
          ),
        ),
        onChange: (double value) {
          setState(() {
            _age = value;
            checkAge();
          });
        });
  }
}
