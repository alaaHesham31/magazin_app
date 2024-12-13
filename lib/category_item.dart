import 'package:flutter/material.dart';

import 'models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel model ;
   CategoryItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  model.image,
                  height: 230,
                  fit: BoxFit.cover,
                ),
      
              ),
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF024383),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              model.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}

