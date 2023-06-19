// import 'dart:io';

// import 'dart:html';

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  // final VoidCallback onClicked;

  const NavBar({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    // required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final color = Theme.of(context).colorScheme.primary;


    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          Container(
            width:double.infinity,
            padding:const EdgeInsets.all(20),
            // color: Theme.of(context).primaryColor,
            decoration:const  BoxDecoration(color: Colors.pink),
            child:  Center(
              child:Column(
                children: <Widget>[
                  Container(
                        // color: Colors.black87,
                         width: 100,
                         height: 100,
                         margin:const  EdgeInsets.only(top: 30,
                         bottom: 10,
                         ),
                         decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('./images/sampleProfile.png'),
                          fit: BoxFit.fill
                          ), 
                             ),
                         
                  ),
                   const Text('S.Ganesh',style:
                         TextStyle( fontSize: 20,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                   ),
                    const Text('sampathiganesh0106@gmail.com',style:TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold
                   ),),
                ],
              ) 
              ),
        
        ),
        
           const ListTile(
          leading: Icon(Icons.person_2_outlined),
          title: Text('Profile'),
          selectedColor: Colors.amber,
          selectedTileColor: Colors.amber,
          
          ),

          const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        
                //       UserAccountsDrawerHeader(
                //     accountName:  Padding(
                //       padding: EdgeInsets.all(2.0),
                //       child: Text('Name : Ganesh'),
                       
                //     ), 
                //     accountEmail: Padding(
                //       padding: EdgeInsets.all(2.0),
                //       child: Text('Email : sampathiganesh0106@gmail.com'),
                //     ),
                //     decoration: BoxDecoration(color: Colors.pink),
                //     arrowColor: Colors.black,
                // ),
                //     currentAccountPicture:CircleAvatar(
//                            child: ClipOval(
//                              child: Center(
//                               child: Stack(
//                               children: [
//                                 const Image(image:AssetImage('images/sampleProfile.png'),
//                                  width: 80,
//                                  height: 80,
//                                  fit: BoxFit.fitWidth,
//                                         ),
          //  const DrawerHeader(
          //     decoration: BoxDecoration(
          //       color: Colors.pinkAccent,
          //     ),
          //     child: Text('Drawer Header'),
          //   ),
          //   ListTile(
          //     title: const Text('Item 1'),
          //     onTap: () {
          //       Update the state of the app
          //       ...
          //       Then close the drawer
          //       Navigator.pop(context);
          //     },
          //   ),
          //   ListTile(
          //     title: const Text('Item 2'),
          //     onTap: () {
          //       // Update the state of the app
          //       // ...
          //       // Then close the drawer
          //       Navigator.pop(context);
          //     },
          //   ),]

    ),
    const ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text('Logout'),
    )
    ]),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      
      child: Material(
        color: Colors.transparent,
        child: 
        // Image.asset('images/sampleProfile.png', fit:BoxFit.fill)
        // Image(image:AssetImage('images/sampleProfile.png'))
        Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          // child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
        // ListTile(
        //   leading: Icon(Icons.logout_outlined),
        //   title: Text('logout'),
        //   )
      );
}


// import 'package:flutter/material.dart';

// class NavBar extends StatelessWidget {
//   const NavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //  final color = Theme.of(context).colorScheme.primary;
//     return  Drawer(
//       child: ListView(
//         children:  [UserAccountsDrawerHeader(accountName:const Text('name : Ganesh'), accountEmail:const Text('Mail : sampathiganesh0106@gmail.com'),
//         currentAccountPicture:CircleAvatar(
//           child: ClipOval(
//             child: Center(
//               child: Stack(
//                 children: [
//                   const Image(image:AssetImage('images/sampleProfile.png'),
//                   width: 80,
//                   height: 80,
//                   fit: BoxFit.fitWidth,
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           width: 4,
//                           color: Colors.white
//                         ),
//                         color: Colors.blue
//                       ),
//                       child:const Icon(
//                         Icons.edit,
//                         color: Colors.white70,
                        
//                       ),
//                     ),
                    
//                      ),
//                     ],
//                    ),
//             )
//                ),  
//              ),
//         )],

//       ),
//     );
      
//   }

  
//   // Widget buildEditIcon(Color color) { 
//   //   return buildCircle(
//   //       color: Colors.white,
//   //       all: 2,
//   //       child: buildCircle(
//   //         color: Colors.red,
//   //         all: 8,
//   //         child: const Icon(
//   //           Icons.edit,
//   //           color: Colors.white,
//   //           size: 15,
//   //         ),
//   //       ),
//   //     );}

//     Widget buildCircle({
//       required Widget child,
//       required double all,
//       required Color color,
//     }) {
//         return ClipOval(
//           child: Container(
//             padding: EdgeInsets.all(all),
//             color: color,
//             child: child,
//           ),
//         );
//   }
// }




                    // currentAccountPicture: CircleAvatar(
                    //   child: 
                    //   ClipOval(
                    //     child: 
                    //     Stack(
                    //         children: [
                    //           buildImage(),
                    //           Positioned(
                    //             bottom: 0,
                    //             right: 4,
                    //             child: buildEditIcon(color),
                    //           ),
                    //         ],
                    //      ),
                    //   ),
                    // ),