import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> _categories = ["Food", "Electronics", "Groceries", "Dress"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
children: [

  Text("Hello Mahabub", style: TextStyle(
    fontWeight: FontWeight.w600,
    color: Color(0XFF000000),
    fontSize: 32,
  ),),
  Text("Let’s gets something?", style: TextStyle(
    fontWeight: FontWeight.w600,
    color: Color(0XFF4F4C4C),
    fontSize: 15,
  ),),

  SizedBox(
  height: 20,
),
  Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 100,
          width: 220,
          decoration: BoxDecoration(
              color: Color(0xFFF46D38),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),

          child: Padding(
            padding: const EdgeInsets.only(left:10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("40% Off During\nCovid 19", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/fruits.png",
                    height:45,
                  ),
                ),

              ],
            ),
          ),

        ),
        SizedBox(width: 10,),
        Container(
          height: 100,
          width: 220,
          decoration: BoxDecoration(
              color: Color(0xFF3861F4),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),

          child: Padding(
            padding: const EdgeInsets.only(left:10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("40% Off During\nCovid 19", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/fruits.png",
                    height:45,
                  ),
                ),

              ],
            ),
          ),

        ),






      ],
    ),
  ),
  SizedBox(height: 20,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Top Categories", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0XFF000000),
        fontSize: 16,
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text("View All", style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0XFFFF4800),
          fontSize: 13,
        ),
        ),
      ),
    ],
  ),
  SizedBox(height: 10,),
  Container(
    height: 30,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
        itemBuilder: (_,index){
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,top: 5,bottom: 5),
              child: Center(child: Text(_categories[index])),
            ),
          ),
        );
                    }
    ),
  ),
  SizedBox(height: 15,
  ),

  Card(child: ListTile(
    dense:true,
    leading: Icon(Icons.abc_outlined),
    title: Text("Title"),
    subtitle: Text("sub Title"),
    trailing: Icon(Icons.abc_outlined),
  )),


          ],
          ),
        ),
      ),
    );
  }
}

// listView =
