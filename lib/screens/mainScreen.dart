// ignore: file_names
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("SIT Mangalore",
        style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.srinivasgroup.com/img/home/banner2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.srinivasgroup.com/img/home/banner2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.srinivasgroup.com/img/home/banner2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.srinivasgroup.com/img/home/banner2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.srinivasgroup.com/img/home/banner2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.slowMiddle,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
           InkWell(
            onTap: (){
            debugPrint("Vtu results button cliccked");
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.green,
              margin: const EdgeInsets.all(10),

        child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text("VTU Results",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: Colors.white
              ),),
            ),
        ),
            ),
          ),



SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_alert_sharp,
                      color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Notices",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ) ,

                  ],
                ),
              ),


              Card(
                color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_chart,
                        color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Holidays",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ) ,

                  ],
                ),
              ),


              Card(
                color: Colors.deepOrangeAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_alarm_sharp,
                        color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Bus Timings",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ) ,

                  ],
                ),
              ),



            ],
          ),

SizedBox(height: 25,),
Card(
  color: const Color(0xF6DEC8),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(children: [
        Text("Join Now"),
        Text("Secure your career "),
        TextButton(
        onPressed: () async {
String url = "https://www.fluttercampus.com";
var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
if(urllaunchable){
await launch(url); //launch is from url_launcher package to launch URL
}else{
print("URL can't be launched.");
}
}, child: Text("Enroll Now",style: TextStyle(color: Colors.white),)),
      ],),
    Image.network("https://cdn.dribbble.com/users/3484830/screenshots/16787618/media/b134e73ef667b926c76d8ce3f962dba2.gif",
    width: 120)
    ],
  ),

)
        ],
      ),
    );
  }
}
