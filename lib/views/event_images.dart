import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:summer_project/components.dart';
import 'package:summer_project/views/event_details.dart';

class EventImages extends StatelessWidget {
  const EventImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back(),
        centerTitle: true,
        title: Text(
          'Event Images',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: HexColor('#3E3A57'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1 / 1.4,
            children:
            List.generate(
              4,
                  (index) => buildGridProduct2(),
            ),

          ),
        ),
      ),
    );
  }

  Widget buildGridProduct2(){
    return Card(
     elevation: 2,
      shadowColor: Colors.grey,
      child:   Column(
        children:
        [
          Image(
            image: AssetImage(
              'assets/images/Mask Group.png',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Image Name',
                  style: TextStyle(
                      fontSize: 14,
                    color: HexColor('#423E5B'),

                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
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
              ],
            ),
          ),


        ],
      ),
    );
  }
}
