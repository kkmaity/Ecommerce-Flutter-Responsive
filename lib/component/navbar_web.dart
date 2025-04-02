import 'package:flutter/material.dart';
import 'package:makemefine/component/txt_medium.dart';
import 'package:makemefine/component/widgets/search_bar_input.dart';

class NavbarWeb extends StatelessWidget {
   final int? selectedIndex;

  const NavbarWeb({super.key, this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,container){
       if(container.maxWidth<600) {
         return Container(
           margin: EdgeInsets.only(top: 10,bottom: 10),
           child: Row(
             children: [
               Text("Shoppy",style: TextStyle(color: Colors.redAccent,fontSize: 18, fontWeight: FontWeight.w700),),
               Flexible(flex: 1,child: Padding(
                 padding: EdgeInsets.only(top: 6.0,bottom: 6,left: 10,right: 10),
                 child:selectedIndex==0?CustomSearchBar():SizedBox(width: container.maxWidth,) ,
               ),
               ),
               Icon(Icons.notifications_none),
              
             ],
           ),
         );
       }else{
         return Container(
           margin: EdgeInsets.all(10),
           child: Row(
             children: [
               Text("Shoppy",style: TextStyle(color: Colors.redAccent,fontSize: 24, fontWeight: FontWeight.w700),),
               SizedBox(width: 20),
               TextMedium(text: 'Category'),
               SizedBox(width: 20),
               TextMedium(text: 'Our Gallery'),
               SizedBox(width: 20),
               TextMedium(text: 'Blog'),
               Spacer(),
               Image(height:24,image: AssetImage('icon/favorite.png')),
               SizedBox(width: 20),
               Image(height:24,image: AssetImage('icon/shopping_cart.png')),
               SizedBox(width: 20),
               Image(height:24,image: AssetImage('icon/manage_accounts.png')),
               SizedBox(width: 20),
             ],
           ),
         );
      }
      
    },);
  }
}
