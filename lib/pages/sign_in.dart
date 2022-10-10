import 'package:coffee/pages/first_page.dart';
import 'package:coffee/pages/sign_up.dart';
import 'package:coffee/utils/colors.dart';
import 'package:coffee/utils/fonts.dart';
import 'package:coffee/utils/icons.dart';
import 'package:flutter/material.dart';

import '../utils/project_images.dart';
import 'home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              decoration: const BoxDecoration(
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
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ProjectICons.back_arrow),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 15,right: 40),
                      margin: EdgeInsets.only(top: 130),
                      height: 469,
                      width: 354,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        color: ProjectsColors.C_6D4831
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 16,left: 12),
                              child: Text("Hello",style: ProjectFonts.Poppins_Bold.copyWith(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white),)), //HEllo
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(left:20,top: 60),
                              height: 28,
                              width: 290,
                              child: const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration:  InputDecoration(
                                  hintText: "Phone Number or Email",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none,

                                ),
                              ),
                            ),
                          ), //Phone number
                          Center(
                            child: Divider(
                              indent: 20,
                              thickness: 1,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ), //divider
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(left:20,top: 40),
                              height: 28,
                              width: 290,
                              child: const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration:  InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none,

                                ),
                              ),
                            ),
                          ), //Password
                          Center(
                            child: Divider(
                              indent: 20,
                              thickness: 1,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ), //divider
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                            },
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(left: 20,top: 40),
                                height: 52,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Text("Sign In",style: ProjectFonts.Poppins_Medium.copyWith(color: ProjectsColors.mainColor,fontSize: 18),),
                                ),
                              ),
                            ),
                          ), //Sign Up
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(left: 20,top: 12),
                                child: Text("or Sign in with",style: ProjectFonts.Poppins_Medium.copyWith(fontSize: 16,color: Colors.white),)),
                          ), //or sign with
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(left: 20,top: 12),
                              width: 136,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 26,
                                    width: 26,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(ProjectICons.google),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.facebook_outlined,color: Colors.white,size: 32,),
                                        ),
                                  Container(
                                    height: 26,
                                    width: 26,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(ProjectICons.twitter),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), //Google Facebook
                          Container(
                            margin: EdgeInsets.only(left: 36,top: 16),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Don't have an account? ",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 18),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                                  },
                                  child: Container(
                                    child: Text(
                                      "Sign-Up",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ), //Dont have an account?
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
