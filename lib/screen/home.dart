import 'package:flutter/material.dart';
import 'package:makemefine/component/home/carousel_home.dart';
import 'package:makemefine/component/navbar_web.dart';
import 'package:makemefine/utils/colors.dart';
import '../component/home/branding_details.dart';
import '../component/home/footer.dart';
import '../component/home/most_popular_product.dart';
import '../component/home/season_top_product.dart';
import '../component/txt_medium.dart';
import '../component/widgets/custom_painter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: NavbarWeb(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Carousel(),
            SizedBox(height: 30),
            Center(child: Text("Top Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 29,color:AppColors.black60),),),
            SizedBox(height: 10),

            Row(
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
            ),

            SizedBox(height: 90),
            MostPopularProduct(),
            SeasonTopProduct(),
            SizedBox(height: 110),
            SizedBox(height:400,child:  BrandingDetails(),),
            SizedBox(height: 110),
                Container(
                  color: AppColors.footerPink,
                    height:250,
                child: Footer()),

          ],
        ),
      ),
    ));
  }
}
