import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:summer_project/components.dart';
import 'package:summer_project/themes.dart';

class EventScreen extends StatefulWidget {
   const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Events',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal
            ),
          ),
          leading: back(
            onTap: (){
              Get.offAllNamed('categories');
            }
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    color: defaultColor,
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/Mask Group 8.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    indicatorColor: defaultColor,
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Active',
                            style: TextStyle(
                                color: defaultColor
                            ),
                          ),
                        ),
                        //child: newsBuilder(),
                      ),
                      Tab(
                        child: Text(
                          'End',
                          style: TextStyle(
                              color: defaultColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                        itemBuilder: (context,index) => eventBuilder(),
                      itemCount: 3,
                    ),
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'end',
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget eventBuilder() => Container(
    height: 130,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: Colors.grey[100]!
      ),
    ),
    child: InkWell(
      onTap: (){
        Get.toNamed('/event_details');
      },
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          children:
          [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Rectangle 29681.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 100,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            '12:00am - 2hours',
                            style: TextStyle(
                              color: HexColor('#8E8B9D'),
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: HexColor('#11A38D').withOpacity(0.1),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              vertical: 5
                            ),

                              child: Text(
                                  'Active',
                                style: TextStyle(
                                  color: HexColor('#11A38D'),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Event Name',
                        style: TextStyle(
                          color: HexColor('#423E5B'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '12/12/2020',
                        style: TextStyle(
                          color: HexColor('#253975'),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
