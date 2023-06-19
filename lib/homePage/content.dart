import 'package:flutter/material.dart';

class MyDashboardBody extends StatelessWidget{
   const MyDashboardBody({super.key});

   @override
   Widget build(BuildContext context){
     return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 150,
       child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 400,
                  // color: Colors.blueGrey,
                  // child: Image.asset('././images/sampleProfile.png', scale: 400,),
                  padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:const Color.fromARGB(255, 247, 227, 227)
                  ,
                  border: Border.all(
                    color: Colors.white70,
      width: 5,
    ),
    
     ),
    //  child:Center(child: const Text("ganesh",style: TextStyle(fontSize: 20),),),
                  
                ),
                Container(
                  width: 400,
                  // child: Image.asset('././images/sampleProfile.png'),
                  // color: Colors.black87,
                   padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:const Color.fromARGB(255, 247, 227, 227)
                  ,
                   border: Border.all(
                    color: Colors.white70,
      width: 5,
    ),),
                  
                ),
                Container(
                  width: 400,
                  // color: Colors.white,
                  // child: Image.asset('././images/sampleProfile.png'),
                   padding:const EdgeInsets.symmetric(horizontal: 10.0),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:const Color.fromARGB(255, 247, 227, 227)
                  ,
                    border: Border.all(
                    color: Colors.white70,
      width: 5,
    ),),
                ),
                Container(
                  width: 400,
                  // color: Colors.amberAccent,
                  // child: Image.asset('././images/sampleProfile.png'),
                   padding:const EdgeInsets.symmetric(horizontal: 10.0),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:const Color.fromARGB(255, 247, 227, 227),
                    border: Border.all(
                    color: Colors.white70,
      width: 5,
    ),),
                ),
                Container(
                  width: 400,
                  // color: Colors.redAccent,
                  // child: Image.asset('././images/sampleProfile.png'),
                   padding:const EdgeInsets.symmetric(horizontal: 10.0),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:const Color.fromARGB(255, 247, 227, 227),
                    border: Border.all(
                    color: Colors.white70,
      width: 5,
    ),),
                ),
              ],
            ),
     );
    }
}



