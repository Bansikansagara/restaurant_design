import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatefulWidget
{

  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen>
{
  bool isLiked = false;

  final List<String> tags = [
    "Recommend",
    "Popular",
    "Noodles",
    "Pizza",
    "Burger",
    "Coffee"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(width: 25),

                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text("  Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: Row(
              children: [
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "20-30min",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize:15, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20), // Add some horizontal spacing
                Container(
                  height: 30,
                  child: Text(
                    "2.4km",
                    style: TextStyle(fontSize: 15,  color: Colors.grey),
                  ),
                ),
                SizedBox(width: 20), // Add some horizontal spacing
                Container(
                  height: 30,
                  child: Text(
                    "Restaurant",
                    style: TextStyle(fontSize: 15,  color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                Text(" Orange Sandwiches is delicious", style: TextStyle(fontSize: 15),),

                SizedBox(width: 55),

                IconButton(
                  onPressed: () {
                    toggleLike();
                  },
                  icon: Icon(
                    isLiked ? Icons.star : Icons.star_border,
                    color: isLiked ? Colors.orange : Colors.orange,
                  ),
                ),
                Text("4.7"),
              ],
            ),
          ),

          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            height: 55, // Set the desired height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(12.5),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      // color: _color ? Colors.orangeAccent : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Text(tags[index],
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  );
                }
            ),

          ),
          SizedBox(height: 10),
          buildProductList(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
  void toggleLike ()
  {
    setState(() {
      isLiked = !isLiked;
    });
  }



  Widget buildProductList() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        buildProductContainer(
          "Soba Soup",
          "No. 1 in Sales",
          "\$ 12",
          "https://unbought-milk.000webhostapp.com/images/s1.jpg",
        ),
        buildProductContainer(
          "Sai Ua Samun Phrai",
          "No. 2 in Sales",
          "\$ 12",
          "https://unbought-milk.000webhostapp.com/images/s2.jpg",
        ),
        buildProductContainer(
          "Ratatouille Pasta",
          "No. 3 in Sales",
          "\$ 12",
          "https://unbought-milk.000webhostapp.com/images/s3.jpg",
        ),
      ],
    );
  }

  Widget buildProductContainer(
      String productName,
      String subtitle,
      String price,
      String imageUrl,
      ) {
    return GestureDetector(
      onTap: () {
        // Add your logic for handling the tap event here.

        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                // Add your logic for adding the product to cart or handling taps here.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }



}