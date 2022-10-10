import 'package:coffee/pages/first_page.dart';
import 'package:coffee/pages/order_page.dart';
import 'package:coffee/utils/colors.dart';
import 'package:coffee/utils/project_images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          height: 900,
          width: 400,
          decoration:const  BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(ProjectImages.bg_third),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 30,left: 30),
                height: 54,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: 26,
                        child: Icon(Icons.home,color: Colors.white,size: 32),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                      },
                    ),
                    SizedBox(width: 12,), //Home
                    Container(
                      height: 54,
                      width: 236,
                      padding: EdgeInsets.only(left: 60),
                      decoration: BoxDecoration(
                        color: Color(0xFF834323).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xFF6A432D))
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text("Tashkent,Uzb",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                            Icon(Icons.arrow_circle_down,color: Colors.white,)

                          ],

                        )
                      ),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      height: 26,
                      child: Icon(Icons.person,color: Colors.white,size: 32),
                    ), //Appbar


                  ],
                ),
              ), //App bar
              Container(
                margin: EdgeInsets.only(top: 28,left: 45),
                child: Text("Hello, Alham",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
              ),
              Container(
                margin: EdgeInsets.only(top: 12,left: 45),
                child: Text("What are you drinking today?",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
              ),
              Container(
                margin: EdgeInsets.only(top: 12,left: 44,right: 44),
                height: 58,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF834323).withOpacity(0.6),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.favorite_outline,color: Colors.white,size: 32),
                    ),
                    Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                          color: Color(0xFF834323).withOpacity(0.6),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.bookmark,color: Colors.white,size: 32),
                    ),
                    Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                          color: Color(0xFF834323).withOpacity(0.6),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.more_horiz_sharp,color: Colors.white,size: 32),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 48,left: 48,top: 18),
                child: Divider(
                  color: Colors.white,
                  thickness: 1.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12,left: 44,right: 44),
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Favourite",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Container(
                      child: Text("Promotions",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Container(
                      child: Text("More",style: TextStyle(color: Colors.white,fontSize: 18),),
                    )

                  ],
                ),
              ), //Tab
              Container(
                margin: EdgeInsets.only(left: 44,right: 44,top: 12),
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Todays Promotions",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      child: Text("see all",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                    ),


                  ],
                ),
              ), //Todays...
              Container(
                margin: EdgeInsets.only(left: 24,top: 18),
                height: 170,
                width: 400,
                child: ListView.builder(
                  itemBuilder: (context, index) => products(context),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24,top: 18),
                height: 170,
                width: 400,
                child: ListView.builder(
                  itemBuilder: (context, index) => products(context),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 48,left: 36,top: 18),
                child: Divider(
                  color: Colors.white,
                  thickness: 1.5,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30,left: 30),
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 2),
                        height: 26,
                        child: Icon(Icons.favorite_outline,color: Colors.white,size: 32),
                      ),
                      onTap: (){
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 26,
                      child: Icon(Icons.person,color: Colors.white,size: 32),
                    ), //Appbar


                  ],
                ),
              ),





            ],
          ),
        ),
      ),

    );
  }
}

Widget products(BuildContext context){
  return Container(
    margin: EdgeInsets.only(left: 10),
    height: 168,
    width: 153,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.6),
              Color(0xFF333333).withOpacity(0.2)
            ]
        ),
        borderRadius: BorderRadius.circular(25)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text("Copachino",style: TextStyle(fontSize: 18,color: Color(0xFF623623)),
          ),
          margin: EdgeInsets.only(right: 20,top: 2),),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ProjectImages.coffee),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  child: Text("Buy",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 18),),
              onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
              },),
              Text("\$8",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
            ],
          ),
        )

      ],
    ),
  );
}
