import 'package:flutter/material.dart';

class Common extends StatelessWidget {
  final hint;
  final color;
  final perfi;
  final control;
  final String? Function(String?)? valide;
  final VoidCallback ontap;
  const Common({super.key, this.hint, this.color, this.perfi, this.valide, required this.ontap, this.control});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      validator: valide,
      onTap: ontap,
      decoration: InputDecoration(
          prefixIcon: perfi,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          fillColor: color,
          filled: true),
    );
  }
}

class Button extends StatelessWidget {
  final VoidCallback ontap;
  final child;
  final color;
  final hight;
  final width;
  const Button({super.key, required this.ontap, this.child, this.color, this.hight, this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: hight,
      minWidth: width,
      color: color,
      onPressed: ontap,
      child: child,
    );
  }
}
