import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool isDatePicker;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.obscureText = false,
    this.isDatePicker = false,
    this.validator,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  Future<void> _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      controller.text =
      "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      readOnly: isDatePicker, // ✅ make read-only if date picker
      onTap: isDatePicker
          ? () async {
        await _pickDate(context);
      }
          : null,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(30, 100, 100, 100),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
