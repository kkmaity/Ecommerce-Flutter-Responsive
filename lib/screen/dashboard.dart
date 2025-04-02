import 'package:flutter/material.dart';

import '../component/home/branding_details.dart';
import '../component/home/carousel_home.dart';
import '../component/home/footer.dart';
import '../component/home/most_popular_product.dart';
import '../component/home/season_top_product.dart';
import '../component/home/top_categories.dart';
import '../utils/colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,container){
      var isMobile=false;
      if(container.maxWidth<600) {
        isMobile=true;
      } else {
        isMobile=false;
      }

return SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 10),
      Carousel(),
      SizedBox(height: 30),
      Center(child: Text("Top Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 29,color:AppColors.black60),),),
      SizedBox(height: 10),
      TopCategories(),
      SizedBox(height:isMobile?20: 90),
      MostPopularProduct(),
      SeasonTopProduct(),
      SizedBox(height: isMobile?20:110),
      SizedBox(height:400,child:BrandingDetails(),),
      SizedBox(height: isMobile?20:100),
      isMobile?SizedBox(height: 0,):
      Container(
          color: AppColors.footerPink,
          height:250,
          child: Footer()),

    ],
  ),
);
    });
  }
}





