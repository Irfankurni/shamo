import 'package:flutter/material.dart';
import 'package:shamo/models/category_model.dart';
import 'package:shamo/theme.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: subtitleColor,
        ),
        color: transparentColor,
      ),
      child: Text(
        category.name,
        style: subtitleTextStyle.copyWith(
          fontSize: 13,
          fontWeight: medium,
        ),
      ),
    );
  }
}
