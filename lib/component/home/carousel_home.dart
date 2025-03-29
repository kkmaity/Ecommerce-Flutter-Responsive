import 'package:flutter/material.dart';
import 'package:makemefine/utils/colors.dart';

class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
    return LayoutBuilder(builder: (context,container){
      if(container.maxWidth<10){
        return Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Stack(
            children: [
              SizedBox(height: MediaQuery.of(context).size.aspectRatio*230,width: MediaQuery.of(context).size.width ,child: Image.asset('images/banner-1.jpg'),),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.width*.06,left: MediaQuery.of(context).size.width*.02),child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Sales of season",style: TextStyle(color: AppColors.red,fontWeight: FontWeight.w600,fontSize: 28),),
                  Text("Up to 20% discount on every product",style: TextStyle(color: AppColors.red10,fontWeight: FontWeight.w400,fontSize: 20),),
                  Text("Save money for every product? terms and conditions apply",style: TextStyle(color: AppColors.black60,fontWeight: FontWeight.w300,fontSize: 12),),

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
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.014, vertical: MediaQuery.of(context).size.width*.01), // Button padding
                    ),
                    child: Padding(padding: EdgeInsets.all(10),child: Text('Shop Now',style: TextStyle(color: Colors.white)),),
                  )
                ],),)

            ],
          ),
        );
      }  else{
        return Flexible(child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Stack(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.6,width: MediaQuery.sizeOf(context).width ,child: Image(image: AssetImage('images/banner-1.jpg'),fit: BoxFit.fill,),),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.width*.06,left: MediaQuery.of(context).size.width*.02),child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sales of season",style: TextStyle(color: AppColors.red,fontWeight: FontWeight.w600,fontSize: 28),),
                  Text("Up to 20% discount on every product",style: TextStyle(color: AppColors.red10,fontWeight: FontWeight.w400,fontSize: 20),),
                  Text("Save money for every product? terms and conditions apply",style: TextStyle(color: AppColors.black60,fontWeight: FontWeight.w300,fontSize: 12),),

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
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.014, vertical: MediaQuery.of(context).size.width*.01), // Button padding
                    ),
                    child: Padding(padding: EdgeInsets.all(10),child: Text('Shop Now',style: TextStyle(color: Colors.white)),),
                  )
                ],),)

            ],
          ),
        ));
      }
    });
  }

}