import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../components.dart';

class CreateEvent extends StatelessWidget {
  //const CreateEvent({Key? key}) : super(key: key);

  var eventNameController = TextEditingController();
  var eventDateController = TextEditingController();
  var eventTimeController = TextEditingController();
  var eventHoursController = TextEditingController();
  var eventCategoriesController = TextEditingController();
  var eventLocationController = TextEditingController();
  var eventInformationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New event',
          style: TextStyle(
            color: HexColor('#3E3A57'),
            fontWeight: FontWeight.normal
          ),
        ),
        centerTitle: true,
        leading: back(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),

                ),
              ),
              SizedBox(
                height: 5,
              ),
              defaultFormField(
                type: TextInputType.text,
                text: 'Enter event name',
                controller: eventNameController,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children:
                [
                  Expanded(
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#040404'),

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#040404'),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children:
                [
                  Expanded(
                    child: defaultFormField(
                      //width: 250,
                      type: TextInputType.text,
                      text: '21 December 2021',
                      controller: eventDateController,

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: defaultFormField(
                      //width: 250,
                      type: TextInputType.text,
                      text: '12:00 pm',
                      controller: eventTimeController,

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Hours',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),

                ),
              ),
              SizedBox(
                height: 5,
              ),
              defaultFormField(
                type: TextInputType.number,
                text: 'No. Of Hours',
                controller: eventHoursController,
                suffix: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 40,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),

                ),
              ),
              SizedBox(
                height: 5,
              ),
              defaultFormField(
                type: TextInputType.text,
                text: 'Category name',
                controller: eventCategoriesController,
                suffix: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),

                ),
              ),
              SizedBox(
                height: 5,
              ),
              defaultFormField(
                type: TextInputType.text,
                text: 'Location',
                controller: eventLocationController,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Information',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),

                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: eventInformationController,
                    maxLength: 100,
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Enter the description',
                          style: TextStyle(
                              color: HexColor('#9A9696'),
                              fontSize: 12
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),

                    ),
                  ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Capture',
                style: TextStyle(
                  fontSize: 15,
                  color: HexColor('#040404'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 120,
                height: 150,
                child: DottedBorder(
                  padding: EdgeInsets.all(0),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(16),
                  dashPattern: [5],
                  color: Colors.grey,
                  //strokeWidth: 2,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 60),
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: HexColor('#F6F6F8')
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 25,
                                color: HexColor('#4E486A'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Add'
                          ),
                        ],
                      ),
                    ),
                ),
              ),
              //SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: defaultButton(
                    text: 'Create new event',
                    function: (){
                      Get.toNamed('/event_details');
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
