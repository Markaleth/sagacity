import 'package:flutter/material.dart';

import '../../dimensions.dart';

class TextInputWidget extends StatelessWidget {
  final void Function(String?) onSaved;

  const TextInputWidget({super.key, required this.onSaved});

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(spacingS),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          errorStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        onSaved: (input) => onSaved(input),
      );
}
