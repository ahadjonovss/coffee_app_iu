import 'package:coffee/pages/payment_page.dart';
import 'package:coffee/utils/project_images.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/fonts.dart';
import '../utils/icons.dart';
import 'home_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}
bool chcb=false;
class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          padding: EdgeInsets.only(left: 47),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ProjectImages.bg_third),
              fit: BoxFit.cover
            )
          ),
          height: 800,
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 205,
                width: 296,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: const  BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ProjectICons.back_arrow),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      top: 6,
                        left: 12,
                    ),
                    Positioned(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ProjectImages.coffee),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      top: 0,
                      left: 50,
                    ),
                    Positioned(
                      child: Container(
                        height: 50,
                        width: 40,
                        child: Icon(Icons.favorite_outline,color: Colors.white,size: 28,),
                            ),
                      bottom: 6,
                      right: 12,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Text("Kisbi Coffee Pack",style:
                TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("2.5",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                ],
              ), //star
              Container(
                margin: EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("USD 100",style:
                    TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                    Container(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.add,color: Colors.white,),
                          Text("3",style: TextStyle(color: Colors.white),),
                          Icon(Icons.add,color: Colors.white,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50,top: 4),
                child: Text("The beans you brew are actually the processed and roasted seeds from a fruit, which is coffee"
                  ,style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 78,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height:77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4).withOpacity(0.48),
                        borderRadius: BorderRadius.circular(50),

                        ),
                      child: Image.asset(ProjectImages.coffee),

                      ),
                    SizedBox(width: 12,),
                    Text("Beet",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width:100,),
                    Text("\$20",style:
                      TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 8,),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white)
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 78,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height:77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4).withOpacity(0.48),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Image.asset(ProjectImages.coffee),

                    ),
                    SizedBox(width: 12,),
                    Text("Beet",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width:100,),
                    Text("\$20",style:
                    TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 8,),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white)
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                height: 78,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height:77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4).withOpacity(0.48),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Image.asset(ProjectImages.coffee),

                    ),
                    SizedBox(width: 12,),
                    Text("Beet",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width:100,),
                    Text("\$20",style:
                    TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 8,),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white)
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 53,
                  width: 400,
                  margin: EdgeInsets.only(top: 30,right: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: Center(child: Text("Submit",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: ProjectsColors.mainColor),)),

                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
