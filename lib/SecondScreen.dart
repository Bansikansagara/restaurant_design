import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_design/FirstScreen.dart';

class SecondScreen extends StatefulWidget{
  @override
  SeconedScreenState createState() => SeconedScreenState();
}

class SeconedScreenState extends State<SecondScreen>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange,

      body: Center(
        child: Stack(
          children: [

            Container(
              margin: EdgeInsets.only(top: 40),

              child: IconButton(
                  iconSize: 30,
                  onPressed: ()
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                  },
                  icon: Icon(Icons.arrow_back)),
            ),

            Container(
              margin: EdgeInsets.only(top: 40,left: 300),

              child: IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_rounded)),
            ),
            Container(

              margin: EdgeInsets.only(top: 170),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                color: Colors.white,
              ),
            ),
            Positioned(

              top: 110,
              left: 105,

              child: ClipOval(
                child: Image.network("https://paternalistic-hiera.000webhostapp.com/Images/OIP.jpeg",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,),

              ),
            ),
            Positioned(
              child:Text("Sei Ua Samun phrai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              top: 290,
              left: 85,),

            Positioned(
              child: Icon(Icons.access_time,color: Colors.blue,),
              top: 330,
              left: 45,),

            Positioned(
              child: Text("50min"),
              top: 335,
              left: 75,
            ),

            Positioned(
              child: Icon(Icons.star,color: Colors.orange,),
              top: 330,
              left: 145,
            ),

            Positioned(
              child: Text("4.8"),
              top: 335,
              left: 175,
            ),

            Positioned(
              child: Icon(Icons.local_fire_department,color: Colors.orange,),
              top: 330,
              left: 235,
            ),

            Positioned(
              child: Text("325 Kcal"),
              top: 335,
              left: 265,
            ),

            Positioned(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("  \$ 12", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                height: 50,
                width: 160,
                margin: EdgeInsets.only(top: 385, left: 100),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.grey,
                ),

              ),),


            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 385, left: 160),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40)),
                  color: Colors.orange,
                ),

                child: Column(
                  children: <Widget>[
                    Align(alignment: Alignment.centerLeft,
                      child: IconButton(onPressed: ()
                      {

                      }, icon: Icon(Icons.add),),),
                  ],
                ),

              ),),
            Positioned(
              child: Container(
                height: 50,
                width: 80,
                margin: EdgeInsets.only(top: 385, left: 210),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
                  color: Colors.orange,
                ),

                child: Column(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight,
                      child: IconButton(onPressed: ()
                      {

                      }, icon: Icon(Icons.minimize),),),
                  ],
                ),

              ),),

            Positioned(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 385, left: 195),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Text("1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              ),),

            Positioned(
              child: Text("Ingredienta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              top: 460,
              left: 20,
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 30),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/noodles.jpg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 120),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/shrimpa.jpeg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 210),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/egg.jpg"),
                ),
              ),
            ),

            Positioned(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 510, left: 300),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.1, 1.1),
                        blurRadius: 20.0,
                        color: Colors.grey
                    ),
                  ],
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://begrimed-executions.000webhostapp.com/images/scallion.jpg"),
                ),

              ),
            ),

            Positioned(
              child: Text("Noodle", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 30,),

            Positioned(
              child: Text("Shrimp", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 120,
            ),

            Positioned(
              child: Text("Egg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 220,
            ),

            Positioned(
              child: Text("Scallion", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              top: 570,
              left: 300,
            ),

            Positioned(
              child: Text("About", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              top: 615,
              left: 30,
            ),

            Positioned(
              top: 640,
              left: 35,
              child: Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.all(2),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(" A vibrant Thai sausage made with ground chicken, ""plus its spicy chile dip, ""from Chef Parnass Savang of Atlanta's Talat Market.",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),softWrap: true,),

                  ],
                ),
              ),
            ),

            Positioned(
              top: 710,
              left: 290,
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: ()
                {

                },child: Icon(Icons.shopping_bag_outlined, color: Colors.black,),
              ),
            ),
          ],
        ),
      ),

    );

  }

}