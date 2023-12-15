import 'package:e_commerce_clone/Widgets/custom_Widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class logIn_Screen extends StatefulWidget {
  const logIn_Screen({super.key});

  @override
  State<logIn_Screen> createState() => _logIn_ScreenState();
}

class _logIn_ScreenState extends State<logIn_Screen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController eMailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffcc2b5e), Color(0xff753a88)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Expanded(
          child: Column(
            children: [
              Expanded1.expanded1(eMailController, passController),
              Expanded1.expanded2()
            ],
          ),
        )),
      ),
    );
  }
}

class Expanded1 {
  static Widget expanded1(TextEditingController eMailController,
      TextEditingController passController) {
    return Expanded(
        flex: 6,
        child: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              custom_Widgets.textField(eMailController, 'E - mail'),
              custom_Widgets.textField(passController, 'Password'),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password ?',
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 18, color: Colors.white),
                      ))),
              custom_Widgets.elevated(
                  Text(
                    'LOG IN',
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 18, color: Colors.white),
                  ),
                  () {},
                  350,
                  50,
                  true),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }

  static Widget expanded2() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            '--------------------------  OR  --------------------------',
            style: GoogleFonts.abhayaLibre(fontSize: 20, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_Widgets.elevated(
                    Icon(
                      FontAwesomeIcons.google,
                      size: 25,
                    ),
                    () {},
                    100,
                    50,
                    false),
                custom_Widgets.elevated(
                    Icon(
                      FontAwesomeIcons.facebook,
                      size: 25,
                    ),
                    () {},
                    100,
                    50,
                    false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_Widgets.elevated(
                    Icon(
                      FontAwesomeIcons.apple,
                      size: 25,
                    ),
                    () {},
                    100,
                    50,
                    false),
                custom_Widgets.elevated(
                    Icon(
                      FontAwesomeIcons.github,
                      size: 25,
                    ),
                    () {},
                    100,
                    50,
                    false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
