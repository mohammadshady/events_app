import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:summer_project/views/event_screen.dart';



class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            color: HexColor('#1B2D49'),
          ),
        ),
        actions:
        [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: (){
                Get.toNamed('/create_event');
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('#F6F6F8')
                ),
                child: Center(
                  child: Icon(
                        Icons.add,
                        size: 35,
                    color: HexColor('#4E486A'),
                      ),
                  ),
                ),
            ),
            ),

        ],
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
            childAspectRatio: 1 / 1.1,
            children:
            List.generate(
              6,
                  (index) => buildGridProduct(),
            ),

          ),
        ),
      ),
    );
  }

  Widget buildGridProduct(){
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(15),
            color: Colors.white
        ),
        child:  Column(
          children:
          [
            Stack(
              fit: StackFit.passthrough,
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/Rectangle 2968.png',
                  ),
                  //width: 200,
                  //height: 200,


                ),
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    width: 81,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black12
                      ),
                    ),
                    padding: EdgeInsetsDirectional.all(4),
                    //color: Colors.red,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_purple500,
                          size: 10,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '6 Events',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Information Technology',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                  color: HexColor('#423E5B'),

                ),
              ),
            ),


          ],
        ),
      ),
      onTap: (){
        Get.to(() => EventScreen());
      },
    );
  }
}
