import 'package:flutter/material.dart';


Widget visibilityRow(bool isVisible) {
  return Visibility(
    visible: isVisible,
    child: IconButton(
      onPressed: () {},
      icon: Icon(Icons.camera_alt_outlined),
    ),
  );
}
