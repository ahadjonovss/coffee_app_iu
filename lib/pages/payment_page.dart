import 'package:coffee/pages/check_out_page.dart';
import 'package:coffee/pages/first_page.dart';
import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/fonts.dart';
import '../utils/icons.dart';
import '../utils/project_images.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
              height: 800,
              width: double.infinity,
              decoration:  const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ProjectImages.bg_second),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 40,left: 12),
                            height: 60,
                            width: 60,
                            decoration: const  BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ProjectICons.back_arrow),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ), //back
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 40,left: 12),
                            height: 60,
                            width: 60,
                            child: Icon(Icons.home,color: Colors.white,size: 30,),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    left: 32,
                    top:120,
                    child: Container(
                        child: Text("Choose Payment  Method",style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                  Positioned(
                    top: 150,
                    left: 32,
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.money,color: Colors.white,),
                        Text("Total 250 USD",style: TextStyle(color: Colors.white,fontSize: 18),),

                        ],
                      ),

                    ),
                  ),
                  Positioned(
                    top: 180,
                    child: Container(
                      margin: EdgeInsets.only(top: 4),
                      width: 390,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                      margin: EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Container(
                              width: 2,
                              height: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ProjectsColors.mainColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Text("Card Detailes",style: TextStyle(color: ProjectsColors.mainColor,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 66,
                    child: Container(
                      height: 72,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                  child: Text("Ahlam Bush",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 16),),
                              margin: EdgeInsets.only(left: 40),),
                              Container(
                                child: Text("Edit",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 16),),
                                margin: EdgeInsets.only(left: 40,right: 30),)
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 6),
                              child: Text("MasterCard **** 2678",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 18))),

                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 305,
                    left: 80,
                    child: Icon(Icons.card_giftcard,color: ProjectsColors.mainColor,),
                  ),
                  Positioned(
                    top: 370,
                    child: Container(
                      height: 66,
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFC4C4C4).withOpacity(0.7)
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              border: Border.all(color: ProjectsColors.mainColor),
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("Bank Transfer",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 18),)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 460,
                    child: Container(
                      height: 66,
                      width: 390,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4C4C4).withOpacity(0.7)
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                border: Border.all(color: ProjectsColors.mainColor),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("Mobile Money",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 18),)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 550,
                    child: Container(
                      height: 66,
                      width: 390,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC4C4C4).withOpacity(0.7)
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                border: Border.all(color: ProjectsColors.mainColor),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("Paypal",style: TextStyle(color: ProjectsColors.mainColor,fontSize: 18),)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 660,
                    left: 40,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOutPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 53,
                        width: 300,
                        margin: EdgeInsets.only(top: 30,right: 50),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)
                        ),
                        child: Center(child: Text("Submit",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: ProjectsColors.mainColor),)),

                      ),
                    ),
                  )


                ],
              )),
        ),
      ),
    );
  }
}
