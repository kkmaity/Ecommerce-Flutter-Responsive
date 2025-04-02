
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class TopCategories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,container){
      if(container.maxWidth>600){
        return  SizedBox(height: 60,child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.grey5, // Solid color
                borderRadius: BorderRadius.circular(4), // Rounded corners
              ),
              // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/necklace.png',height: 24,width: 24,),
                          SizedBox(width: 5,),
                          Text('Necklace')
                        ],
                      ),

                      Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                    ]
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.grey5, // Solid color
                borderRadius: BorderRadius.circular(4), // Rounded corners
              ),
              // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/earrings.png',height: 24,width: 24,),
                          SizedBox(width: 5,),
                          Text('Earrings')
                        ],
                      ),

                      Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                    ]
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.grey5, // Solid color
                borderRadius: BorderRadius.circular(4), // Rounded corners
              ),
              // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/pearl_necklace.png',height: 24,width: 24,),
                          SizedBox(width: 5,),
                          Text('Pearl Necklace')
                        ],
                      ),

                      Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                    ]
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.grey5, // Solid color
                borderRadius: BorderRadius.circular(4), // Rounded corners
              ),
              // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/wedding_ring.png',height: 24,width: 24,),
                          SizedBox(width: 5,),
                          Text('Wedding Ring')
                        ],
                      ),
                      Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)
                    ]
                ),
              ),
            )],
        ),);
      }
      else{
        return  SizedBox(
          height: 60,

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.grey5, // Solid color
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),

                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon/necklace.png',height: 24,width: 24,),
                              SizedBox(width: 5,),
                              Text('Necklace')
                            ],
                          ),

                          Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                        ]
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.grey5, // Solid color
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon/earrings.png',height: 24,width: 24,),
                              SizedBox(width: 5,),
                              Text('Earrings')
                            ],
                          ),

                          Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                        ]
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.grey5, // Solid color
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon/pearl_necklace.png',height: 24,width: 24,),
                              SizedBox(width: 5,),
                              Text('Pearl Necklace')
                            ],
                          ),

                          Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)

                        ]
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.grey5, // Solid color
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  // padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),

                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon/wedding_ring.png',height: 24,width: 24,),
                              SizedBox(width: 5,),
                              Text('Wedding Ring')
                            ],
                          ),
                          Card(margin: EdgeInsets.only(top: 5,bottom: 5),color: AppColors.footerPink,child: SizedBox(height: 2,width: 50,),)
                        ]
                    ),
                  ),
                )],
            ),
          ),
        );
      }
    });
  }

}