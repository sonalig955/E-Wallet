import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:scratch_flutter/widgets/text-input.dart';

class MobileRecharge extends StatelessWidget {
  const MobileRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade400,
        appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade400,
        // there are two text flight and search with different text styles
        title: RichText(
        text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 32,fontStyle: FontStyle.italic),
    children: [
    // flight
    TextSpan(
    text: "Mobile",
    style: GoogleFonts.overpass(fontWeight: FontWeight.w200),
    ),
    // search
    TextSpan(
    text: "Recharge",
    style: GoogleFonts.overpass(fontWeight: FontWeight.bold),
    ),
    ]),
    ),
    ),

      body: SingleChildScrollView(
          child: Column(
            children: [
              TextInputFeild(icon: Icons.search, hint: 'Search', inputType: null, inputAction: null),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  children:  [
                    GestureDetector(
                      child: Column(
                        children: [
                          CircleAvatar(
                              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1519671667622309888/aSU37xPU_400x400.jpg'),


                              radius: 30,
                            ),
                          SizedBox(height: 8,),
                          Text("Jio",style: TextStyle(
                            color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                      onTap: () => Navigator.pushNamed(context, 'JioPage'),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 48.0),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'VodafonePage'),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://gumlet.assettype.com/freepressjournal/2020-09/24afb3ae-1273-4aab-8116-cf66c3d6aec6/WhatsApp_Image_2020_09_07_at_12_27_11_PM.jpeg'),

                              radius: 30,
                            ),
                            SizedBox(height: 8,),
                            Text("Vodafone",style: TextStyle(
                                color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                            ),),
                          ],

                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, 'AirtelPage'),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/airtel.jpg'),

                              radius: 30,
                            ),

                          ),
                          SizedBox(height: 8,),
                          Text("Airtel",style: TextStyle(
                              color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),

                  ],

                ),
              ),
              SizedBox(height: 30,),

              Padding(padding: EdgeInsets.only(right: 255.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'BsnlPage'),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/bsnl.jpg'),

                        radius: 30,
                      ),
                      SizedBox(height: 8,),
                      Text("Bsnl",style: TextStyle(
                          color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),

                ),

              ),

              Container(
                child: Center(
                  child: Lottie.asset('assets/animations/102616-friends.json',width: 400.0,height:400.0 ),
                ),
              ),



              ],
          ),




      ),
      

    );

  }
}
