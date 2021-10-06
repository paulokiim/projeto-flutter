import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final Icon prefixIcon;
  final bool hasSufixIcon;
  final String hintText;
  final String labelText;
  final bool visiblePassword;
  final controller;
  final handlePlainPassword;

  InputTextField({
    required this.keyboardType,
    required this.hintText,
    required this.prefixIcon,
    required this.labelText,
    required this.visiblePassword,
    required this.controller,
    required this.hasSufixIcon,
    this.handlePlainPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          height: 60,
          child: TextField(
            controller: controller,
            obscureText: visiblePassword ? false : true,
            keyboardType:
                visiblePassword ? keyboardType : TextInputType.visiblePassword,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 14.0),
              prefixIcon: prefixIcon,
              suffixIcon: hasSufixIcon
                  ? IconButton(
                      onPressed: handlePlainPassword,
                      icon: Icon(
                        visiblePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    )
                  : null,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
