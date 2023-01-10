import 'package:flutter/material.dart';

class AddPropertyWidget extends StatefulWidget {
  const AddPropertyWidget({super.key});

  @override
  State<AddPropertyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddPropertyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPropertyWidget'),
      ),
    );
  }
}
