import 'package:flutter/material.dart';

class Cutomelevatedbutton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? onPressButton;
  final Color? bgColor;
  const Cutomelevatedbutton(
      {super.key,
      required this.btnName,
      this.icon,
      this.textStyle,
      this.onPressButton,
      this.bgColor = Colors.pink});
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )
          // RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(20),
          //         bottomLeft: Radius.circular(20)))
          ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(
                  width: 10,
                  height: 10,
                ),
                Text(
                  btnName,
                  style:
                      textStyle != null ? textStyle : TextStyle(fontSize: 15),
                ),
              ],
            )
          : Text(
              btnName,
              style: textStyle != null ? textStyle : TextStyle(fontSize: 15),
            ),
      onPressed: () {
        onPressButton!();
      },
    ));
  }
}
