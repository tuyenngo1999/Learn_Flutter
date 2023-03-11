import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'category_page.dart';
import 'models/category.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget
{
  CategoryInfo category;
  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
   return InkWell(
     onTap: (){
       print('tap to category Item: ${this.category.content}');
       // Navigator.of(context).push(
       //   MaterialPageRoute(builder: (context) =>FoodsPage(categoryInfo: this.category))
       // );
       Navigator.pushNamed(context, FoodsPage.routeName,arguments: {'category' : category});
     },
     splashColor:Colors.deepPurple,
     child: Container(
       child: Container(
         decoration: BoxDecoration(
             gradient: LinearGradient(
                 colors: [
                   _color.withOpacity(0.8),
                   _color
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight
             ),
             color: _color,
             borderRadius: BorderRadius.circular(20)
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               this.category.content,
               style: const TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}