import 'package:flutter/material.dart';
import 'package:makemefine/component/home/product_item.dart';
import 'package:makemefine/component/txt_medium.dart';
import 'package:makemefine/utils/colors.dart';

import '../../utils/sample_data.dart';

class MostPopularProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
        child: Row(
          children: [
            TextMedium(text: 'Most popular products(29)'),
            Spacer(),
            Text( 'View All',style: TextStyle(color: AppColors.red),),

          ],
        ),
      ),

      Container(
        padding: EdgeInsets.only(left: 10,right: 10,bottom: 20),
        width: MediaQuery.of(context).size.width,
        height: 250, // Set the height for the horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // Horizontal scroll
          itemCount: products.length,
          itemBuilder: (context, index) {
            return SizedBox(width:200,child: ProductItem(title: products[index].title,cost: products[index].cost,imageUrl: products[index].imageUrl,rating: products[index].rating,),);
          },
        ),
      ),

    ],);

  }

}