import 'package:astron/core/constants.dart';
import 'package:astron/utils/item_class_parameter.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.itemParam});

  final ItemClassParameter itemParam;
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double textSize = KDOUBLE20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.itemParam.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(":D"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KDOUBLE10),
          child: Column(
            children: [
              Image.asset(widget.itemParam.imagePath, fit: BoxFit.cover),
              Wrap(
                spacing: KDOUBLE8,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        textSize = KDOUBLE10;
                      });
                    },
                    child: Text("Small Title"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        textSize = KDOUBLE16;
                      });
                    },
                    child: Text("Medium Title"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        textSize = KDOUBLE20;
                      });
                    },
                    child: Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        textSize = KDOUBLE40;
                      });
                    },
                    child: Text("Huge Title"),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.itemParam.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: textSize,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  textAlign: TextAlign.justify,
                  widget.itemParam.description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: KDOUBLE16,
                  ),
                ),
              ),
              SizedBox(height: KDOUBLE10),
              FittedBox(
                child: Text(
                  textAlign: TextAlign.justify,
                  widget.itemParam.description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: KDOUBLE16,
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
