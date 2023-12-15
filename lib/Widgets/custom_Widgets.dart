import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_Widgets {
  static textField(TextEditingController controller, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: TextField(
        controller: controller,
        style: GoogleFonts.abhayaLibre(fontSize: 18, color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: text,
          hintStyle: GoogleFonts.abhayaLibre(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  static elevated(Widget child, VoidCallback callback, double width,
      double height, bool icon) {
    return Padding(
      padding: icon == true
          ? EdgeInsets.symmetric(vertical: 20, horizontal: 20)
          : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: ElevatedButton(
        onPressed: callback,
        child: child,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black45,
            minimumSize: Size(width, height),
            elevation: 5),
      ),
    );
  }
}
