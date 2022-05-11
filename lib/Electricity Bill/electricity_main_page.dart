
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class ElectricityPage extends StatefulWidget {
  const ElectricityPage({Key? key}) : super(key: key);

  @override
  State<ElectricityPage> createState() => _ElectricityPageState();
}

class _ElectricityPageState extends State<ElectricityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade500,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Electricity Bill ⚡',style: TextStyle(
          color: Colors.lightBlue.shade900,fontSize: 30.0,fontWeight: FontWeight.w600
        ),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Lottie.asset(
                  'assets/animations/104487-bulb.json'),

            ),
            SizedBox(height: 40,),
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Container(

                    width: 130,
                    height: 110,
                    decoration: BoxDecoration(

                        color: Colors.amber.shade600,
                        border: Border.all(
                          color: Colors.amber.shade700,
                          width: 3,



                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                          spreadRadius: 5.0,
                        ),]),

                    child:
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 40.0),
                         child: Text("4KWH (\$3/H) ",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                      ),),
                       ),



              ),

                ),
    GestureDetector(
      onTap: () => Navigator.pushNamed(
          context, 'QrPage'),
      child: Container(

      width: 130,
      height: 110,
      decoration: BoxDecoration(

      color: Colors.amber.shade600,
      border: Border.all(
      color: Colors.amber.shade700,
      width: 3,


      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [BoxShadow(
      color: Colors.black,
      blurRadius: 20.0,
      spreadRadius: 5.0,
      ),]),

      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46.0,vertical: 40),
      child: Text("Pay ",style: TextStyle(

      fontSize: 18,fontWeight: FontWeight.bold,
      ),),

      ),

      ),
    ),
                            ],

            )

          ],
        ),


      ),

    );

  }
}
