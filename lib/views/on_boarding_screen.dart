import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:summer_project/components.dart';

import '../controller/on_boarding_controller.dart';
import '../model/on_boarding_model.dart';



class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  var controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children:
          [
            GetBuilder<OnBoardingController>(
              init: OnBoardingController(),
              builder: (controller) {
                return Expanded(
                  child: PageView.builder(
                    itemBuilder: (context ,index) => buildBoardingItem(controller.item[index],context),
                    itemCount: controller.item.length,
                    physics: BouncingScrollPhysics(),
                    controller: controller.boardingControl,
                    onPageChanged: (index){
                      controller.isLastPage(index);
                    },
                  ),
                );
              },

            ),
            SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: controller.boardingControl,
              count: controller.item.length,
              effect: SlideEffect(
                  activeDotColor: HexColor('#253975'),
                  dotColor: Colors.grey,
                  //expansionFactor: 4,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 5
              ),
            ),
            SizedBox(
              height: 70,
            ),
            defaultButton(
                text: 'Next',
                function: (){
                  controller.nextBoard();
                }
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                    'Aleardy have an account?',
                  style: TextStyle(
                    color: HexColor('#423E5B')
                  ),
                ),
                defaultTextButton(
                  function: (){
                    Get.offAllNamed('/login');
                  },
                  text: 'Sign In',
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }


  Widget buildBoardingItem(OnBoardingModel board,context) =>  Column(
    children:
    [
      Expanded(
        child: Image(
            image: AssetImage(board.image),
        ),
      ),
      SizedBox(
        height: 0,
      ),
      Text(
        board.title,
        style: TextStyle(
            fontSize: 20,
          color: HexColor('#040404'),
        ),

      ),
      SizedBox(
        height: 15,
      ),
      Text(
        board.body,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: HexColor('#707070'),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
