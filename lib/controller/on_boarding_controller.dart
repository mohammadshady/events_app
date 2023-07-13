import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/on_boarding_model.dart';
import '../views/login_screen.dart';


class OnBoardingController extends GetxController{

  var boardingControl = PageController();
  bool isLast = false;
  List<OnBoardingModel> item = [
    OnBoardingModel(
        image: 'assets/images/Group 2182.png',
        title: 'Subscribe events',
        body: 'by using this app you will subscribe your event easily and quickly.',
    ),
    OnBoardingModel(
      image: 'assets/images/Group 2175.png',
      title: 'Online payment',
      body: 'this app provide you to pay through multiple  methods such as:  Visa, PayPal and cash.',
    ),
    OnBoardingModel(
      image: 'assets/images/Group 2176.png',
      title: 'Create events',
      body: '“you can create your own event in the application free and invite your friends',
    ),
  ];

  void isLastPage(index){
    if(index == item.length - 1){
      isLast = true;
      update();
    }else{
      isLast = false;
      update();
    }
  }

  void nextBoard(){
    if(isLast){
      submit();
      update();
    }else{
      boardingControl.nextPage(
          duration: Duration(
            milliseconds: 750,
          ),
          curve: Curves.fastOutSlowIn,
      );
      update();
    }
  }

  void submit(){
    Get.offAllNamed('/login');
  }


}