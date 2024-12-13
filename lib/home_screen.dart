import 'package:flutter/material.dart';
import 'package:magazin_app/category_item.dart';
import 'package:magazin_app/models/category_model.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key}) {    generateDummyData();
   }

  List<CategoryModel> categories = [];

  generateDummyData(){
    for(int i =0 ; i<10 ; i++){
      categories.add(
        CategoryModel('assets/images/frame1.png', 'Alex $i'),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxis,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFF024383),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Aviable Hotels',
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16,),
              Expanded(
                child: GridView.builder(
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(model: categories[index]),
                    );


                    ;
                  }

                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  List<Widget> converToWidget(){
   return categories.map((model){
      return Row(
        children: [
          CategoryItem(model: model)
        ],
      );
   }).toList();
  }
}
