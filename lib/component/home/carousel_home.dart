import 'package:flutter/material.dart';
import 'package:makemefine/utils/colors.dart';

class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
    return LayoutBuilder(builder: (context,container){

      print(container.maxWidth);
        return Container(
          height: container.maxWidth<600?MediaQuery.of(context).size.width*0.5:MediaQuery.of(context).size.width*0.35,
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Stack(
            children: [
              SizedBox(height:container.maxWidth<600?MediaQuery.of(context).size.width*0.5:MediaQuery.of(context).size.width*0.35,width: MediaQuery.of(context).size.width ,child: Image.asset('assets/images/banner.png',fit: BoxFit.cover,),),
              Padding(padding: EdgeInsets.all(10),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),


                    Text("Sales of season",style: TextStyle(color: AppColors.red,fontWeight: FontWeight.w600,fontSize: container.maxWidth<600?18:22),),
                    Text("Up to 20% discount on product",style: TextStyle(color: AppColors.red10,fontWeight: FontWeight.w400,fontSize: container.maxWidth<600?13:18),),
                    Text("Save money for every product?",style: TextStyle(color: AppColors.black60,fontWeight: FontWeight.w300,fontSize: container.maxWidth<600?10:12),),

                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Your button action here
                        print("Button Pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red,
                        shadowColor: AppColors.grey10,


                        elevation: 5, // Elevation (shadow) of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.014, vertical: MediaQuery.of(context).size.width*.01), // Button padding
                      ),
                      child: Padding(padding: EdgeInsets.all(4),child: Text('Buy Now',style: TextStyle(color: Colors.white)),),
                    ),
                    Spacer()
                  ],),)

            ],
          ),
        );

    });
  }

}