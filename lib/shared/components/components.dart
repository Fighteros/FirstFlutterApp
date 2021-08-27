import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// default button is for use
Widget defaultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        bool isUpperCase = true,
        double radius = 3,
        required VoidCallback function,
        required String text}) =>
    Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        child: Text(
          isUpperCase ? text.toUpperCase() : text.toLowerCase(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );

// default text form filed
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  Function(dynamic val)? onSubmit,
  Function(dynamic val)? onChanged,
  void Function()? onTap,
  required Function(String? val) validator,
  required IconData? prefixIcon,
  VoidCallback? onEyePress,
  IconData? suffixIcon,
  bool isPassword = false,
  bool isEnabled = true
}) => TextFormField(
  enabled: isEnabled,
  obscureText: isPassword,
  onChanged: onChanged,
  onTap: onTap,
  onFieldSubmitted: onSubmit,
  validator: (value)=>validator(value),
  controller: controller,
  // Keyboard type
  keyboardType: type,
  decoration: InputDecoration(
    // hintText: "Email Address",
    labelText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(prefixIcon),
    suffixIcon: suffixIcon != null ? IconButton(icon: Icon(suffixIcon), onPressed: onEyePress): null,
  ),
);

