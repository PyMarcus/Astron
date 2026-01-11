import 'package:astron/core/constants.dart';
import 'package:astron/utils/item_class_parameter.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.itemParam});

  final ItemClassParameter itemParam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemParam.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KDOUBLE10),
          child: Column(
            children: [
              Image.asset(itemParam.imagePath, fit: BoxFit.cover),
              FittedBox(
                child: Text(
                  itemParam.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: KDOUBLE100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
