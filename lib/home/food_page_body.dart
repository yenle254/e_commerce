import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?Color(0xFFBBCB64):Color(0xFFFFE52A),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/food0.png"))
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white ,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Ching chong Ding dong"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5,(index) { return Icon(Icons.star, color: AppColors.mainColor,size: 15,);} ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
