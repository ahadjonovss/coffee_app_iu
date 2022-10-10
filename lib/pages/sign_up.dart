import 'package:coffee/utils/fonts.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/icons.dart';
import '../utils/project_images.dart';
import 'home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Container(
          height: 800,
          width: double.infinity,
          decoration:  const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ProjectImages.background),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40,left: 12),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ProjectICons.back_arrow),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ), //back
              SizedBox(height: 40,),
              Center(
                child: Text("Sign-Up",style: ProjectFonts.Poppins_Bold.copyWith(color: Colors.white,fontSize: 26),),
              ), //Sign Up
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  margin: EdgeInsets.only(top:30),
                  height: 544,
                  width: 354,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42),
                      color: ProjectsColors.C_6D4831
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 48,),
                      Container(
                        height: 76,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 27,
                              child: Text("Full Name",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 48,
                              margin: EdgeInsets.only(top: 1),
                              decoration: BoxDecoration(
                                color: Color(0xFFC59C7F).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextField(
                                autocorrect: true,
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),

                              ),

                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 76,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 27,
                              child: Text("Email Adress",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 48,
                              margin: EdgeInsets.only(top: 1),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC59C7F).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextField(
                                autocorrect: true,
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),

                              ),

                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 76,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 27,
                              child: Text("Phone Number",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 48,
                              margin: EdgeInsets.only(top: 1),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC59C7F).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextField(
                                autocorrect: true,
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),

                              ),

                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 76,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 27,
                              child: Text("Create Password",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 48,
                              margin: EdgeInsets.only(top: 1),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC59C7F).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextField(
                                autocorrect: true,
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),

                              ),

                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 76,
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 27,
                              child: Text("Confirm Password",style: ProjectFonts.Poppins_Light.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 48,
                              margin: EdgeInsets.only(top: 1),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC59C7F).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextField(
                                autocorrect: true,
                                style: TextStyle(fontSize: 20,color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),

                              ),

                            )

                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 53,
                          width: 400,
                          margin: EdgeInsets.only(top: 1),
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
              )
            ],
          )),
    ),
    ),
    );
  }
}
