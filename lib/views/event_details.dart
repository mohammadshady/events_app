import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:summer_project/components.dart';
import 'package:summer_project/views/event_screen.dart';


class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back(
          onTap: (){
            Get.to(EventScreen());
          }
        ),
        title: Text(
          'Event Name',
          style: TextStyle(
            color: HexColor('#3E3A57'),
            fontWeight: FontWeight.normal
          ),
        ),
        centerTitle: true,
        actions:
        [
          Icon(
           Icons.add_box,
            size: 30,
            color: HexColor('#403B58'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
                Icons.linked_camera,
              size: 30,
              color: HexColor('#403B58'),
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Image(
                      image: AssetImage('assets/images/Rectangle 2827.png'),
                      fit: BoxFit.fill,
                      width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      horizontal: 20
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          //height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black12
                            ),
                          ),
                          padding: EdgeInsetsDirectional.all(7),
                          //color: Colors.red,
                          child:  Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 20,
                                color: HexColor('#55516B'),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                '2 Hours',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: HexColor('#55516B')
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 100,
                          //height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black12
                            ),
                          ),
                          padding: EdgeInsetsDirectional.all(5),
                          //color: Colors.red,
                          child:  Row(
                            children: [
                              Icon(
                                Icons.star_purple500_outlined,
                                size: 20,
                                color: HexColor('#55516B'),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                'Now',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: HexColor('#55516B')
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  'Event Name Appear Here',
                  style: TextStyle(
                    fontSize: 22,
                    color: HexColor('#403B58')
                  ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                  children:
                  [
                    eventDetails(
                        Icon(
                            Icons.access_time,
                            size: 20,
                            color : HexColor('#8E8B9D')
                        ),
                        Text(
                          '09:00am',
                          style: TextStyle(
                            color: HexColor('#8E8B9D')
                          ),
                        )
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    eventDetails(
                        Icon(
                          Icons.date_range,
                          size: 20,
                          color : HexColor('#8E8B9D')
                      ),
                        Text(
                        '12/12/2022',
                        style: TextStyle(
                            color: HexColor('#8E8B9D')
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed('/event_images');
                      },
                      child: eventDetails(
                        Icon(
                            Icons.image,
                            size: 20,
                            color : HexColor('#8E8B9D')
                        ),
                        Text(
                          '10 images',
                          style: TextStyle(
                              color: HexColor('#8E8B9D')
                          ),
                        ),
                      ),
                    ),

                  ],

                ),
              ),
              SizedBox(
                height: 20,
              ),
              eventDetails(
                Icon(
                  Icons.location_on_rounded,
                  color: HexColor('#403B58'),
                ),
                Text(
                  'location',
                  style: TextStyle(
                    color: HexColor('#403B58'),
                    fontSize: 15
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              eventDetails(
                Icon(
                  Icons.info,
                  color: HexColor('#403B58'),
                ),
                Text(
                  'Info',
                  style: TextStyle(
                      color: HexColor('#403B58'),
                      fontSize: 15
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ',
                style: TextStyle(
                  height: 1.5,
                  color: HexColor('#807C94'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: HexColor('#D9D8DE'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 15,
                        color: HexColor('#403B58')
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(22)',
                      style: TextStyle(
                          fontSize: 12,
                          color: HexColor('#807C94')
                      ),
                    ),
                    Spacer(),
                    Text(
                      'see All',
                      style: TextStyle(
                          fontSize: 12,
                          color: HexColor('#807C94')
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context,index) => commentBuilder(),
                itemCount: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget commentBuilder() => Container(
    height: 100,
    padding: EdgeInsets.all(10),
    child:  Row(
      children:
      [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Image(
            image: AssetImage('assets/images/Mask Group 8.png'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:
            [
              Expanded(
                child: Text(
                  'Slava john',
                  style: TextStyle(
                    color: HexColor('#403B58'),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Comment Appear Here',
                  style: TextStyle(
                      color: HexColor('#403B58'),
                      fontSize: 13
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '12/12/2020 - 09:20pm',
                  style: TextStyle(
                      color: HexColor('#AFAFAF'),
                      fontSize: 13
                  ),

                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget eventDetails(Icon icon,Text text){
  return Row(
    children:
    [
      icon,
      SizedBox(
        width: 5,
      ),
      text,
    ],
  );
}

