import 'package:coffee/utils/colors.dart';
import 'package:coffee/utils/fonts.dart';
import 'package:coffee/utils/project_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ProjectImages.background),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                  height: 180,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ProjectImages.top_bg),
                          fit: BoxFit.cover))),
            ),
            Positioned(
                child: Container(
              height: 290,
              width: 240,
              child: Text(
                "Coffee\nMade\nEasy",
                style: ProjectFonts.Poppins_Bold.copyWith(
                  color: Colors.white,
                  fontSize: 66,
                  decorationStyle: 
                  ]
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 72,
                left: 34,
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        border: Border.all(color: ProjectsColors.borderColor)),
                    height: 52,
                    width: 320,
                    child: Center(
                      child: Text(
                        "Start here",
                        style: ProjectFonts.Poppins_Medium.copyWith(
                            color: ProjectsColors.mainColor, fontSize: 18),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
