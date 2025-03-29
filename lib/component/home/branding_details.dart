import 'package:flutter/material.dart';
import 'package:makemefine/component/txt_medium.dart';
import 'package:makemefine/component/txt_small.dart';
import 'package:makemefine/utils/colors.dart';

import '../widgets/txt_small_white.dart';

class BrandingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (constraints.maxWidth>600) Container(child: Flexible(flex:1,child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Set the radius for rounded corners
                child: Image.asset(
                  'assets/images/jwel.png', // Path to your image file
                  width: 600, // Set the width of the image
                  height: 500, // Set the height of the image
                  fit: BoxFit.cover, // Optionally set the image fit
                ),
              ),
              ),)else Container(),

              Flexible(flex:1,child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(overflow: TextOverflow.ellipsis,'Most Trending Jewellery',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 39,color: AppColors.black40),),
                    SizedBox(height: 10,),
                    Text(overflow: TextOverflow.clip,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: AppColors.black60),),

                  ],
                ),
              ))
              ,

            ],
          ),
        );
      },
    );
  }
}