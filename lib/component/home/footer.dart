import 'package:flutter/material.dart';
import 'package:makemefine/component/txt_medium.dart';
import 'package:makemefine/component/txt_small.dart';
import 'package:makemefine/utils/colors.dart';

import '../widgets/txt_small_white.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine how many columns to display based on screen width
        int crossAxisCount = 4; // Default to 4 items in a row
        if (constraints.maxWidth < 600) {
          crossAxisCount = 1; // Single column for small screens
        } else if (constraints.maxWidth < 1200) {
          crossAxisCount = 2; // Two columns for medium screens
        }

        return GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,  // Space between columns
            mainAxisSpacing: 8.0,   // Space between rows
          ),
          itemCount: 4,  // Total number of items
          itemBuilder: (context, index) {
            if(index==0){
              return Container(
                // color: AppColors.footerPink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('SHOPPY',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: AppColors.white),),
                    SizedBox(height: 10,),
                    TextSmallWhite(text:'About us'),
                    TextSmallWhite(text:'Blog'),
                    TextSmallWhite(text:'Contact us' ),
                    TextSmallWhite(text:'About Us')
                  ],),
              );
            } if(index==1){
              return Container(
                //color: AppColors.footerPink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('PRIVACY GUIDELINE',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: AppColors.white),),
                    SizedBox(height: 10,),
                    TextSmallWhite(text:'Terms of use'),
                    TextSmallWhite(text:'Privacy policy'),

                  ],),
              );
            }if(index==2){
              return Container(
                //color: AppColors.footerPink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('SOCIAL',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: AppColors.white),),
                    SizedBox(height: 10,),
                    TextSmallWhite(text:'Facebook'),
                    TextSmallWhite(text:'Link-dn'),
                    TextSmallWhite(text:'Youtube' ),
                    TextSmallWhite(text:'X')
                  ],),
              );
            }if(index==3){
              return Container(
                //color: AppColors.footerPink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('CONTACT',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: AppColors.white),),
                    SizedBox(height: 10,),
                    TextSmallWhite(text:'131 Sarat Bose Road'),
                    TextSmallWhite(text:'Kolkata 700101'),
                    TextSmallWhite(text:'Email: abcdcompany@domain.com' ),
                    TextSmallWhite(text:'Mob: 90847676674')
                  ],),
              );
            }

          },
        );
      },
    );
  }
}