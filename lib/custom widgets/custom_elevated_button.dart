import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  Function onClick;
  String text;
  bool? center;
  Color? borderColor;
  Color? backgroundColor;
  TextStyle? textStyle;
  ImageIcon? imageIcon;
  double? margin;

  CustomElevatedButton(
      {required this.onClick,
      required this.text,
      this.center = false,
      this.textStyle,
      this.borderColor,
      this.backgroundColor,
      this.imageIcon,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onClick();
      },
      child: Container(
        margin: EdgeInsets.all(margin??0),
        child: (center!)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageIcon ?? SizedBox(),
                  Text(
                    text,
                      style: textStyle ??TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white)
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  imageIcon ?? SizedBox(),
                  Text(
                    text,
                    style: textStyle ??TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white)
                  )
                ],
              ),
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: borderColor ?? Colors.red)
          ),
        backgroundColor: backgroundColor??Colors.red,
        elevation: 0
      ),
    );
  }
}
