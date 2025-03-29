import 'package:flutter/material.dart';
import 'package:makemefine/component/txt_medium.dart';

class NavbarWeb extends StatelessWidget {
  const NavbarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text("Shoppy",style: TextStyle(color: Colors.redAccent,fontSize: 24, fontWeight: FontWeight.w700),),
          SizedBox(width: 10),
          TextMedium(text: 'Category'),
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
}
