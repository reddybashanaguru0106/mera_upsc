import 'package:flutter/material.dart';

class MyDashboardBody extends StatelessWidget{
   const MyDashboardBody({super.key});

   @override
   Widget build(BuildContext context){
     return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200,
       child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 400,
                  child: Image.asset('././images/sampleProfile.png', scale: 100,),
                ),
                SizedBox(
                  width: 400,
                  child: Image.asset('././images/sampleProfile.png'),
                  // color: Colors.blue,
                ),
                SizedBox(
                  width: 400,
                  // color: Colors.green,
                  child: Image.asset('././images/sampleProfile.png'),
                ),
                SizedBox(
                  width: 400,
                  // color: Colors.yellow,
                  child: Image.asset('././images/sampleProfile.png'),
                ),
                SizedBox(
                  width: 400,
                  // color: Colors.orange,
                  child: Image.asset('././images/sampleProfile.png'),
                ),
              ],
            ),
     );
    }
}



