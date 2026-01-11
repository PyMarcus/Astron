import 'package:astron/core/constants.dart';
import 'package:astron/pages/description_page.dart';
import 'package:astron/utils/item_class_parameter.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              final ItemClassParameter itemParam = ItemClassParameter(
                title: title,
                description: description,
                imagePath: imagePath,
              );
              return DescriptionPage(itemParam: itemParam);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(KDOUBLE8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, fit: BoxFit.cover),

              const SizedBox(height: KDOUBLE10),

              Text(
                title,
                style: const TextStyle(
                  fontSize: KDOUBLE22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: KDOUBLE8),

              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
