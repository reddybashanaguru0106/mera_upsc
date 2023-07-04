import 'package:flutter/material.dart';
import 'chapterDetails.dart';
class SubjectsDetail extends StatelessWidget {
  const SubjectsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Current events of national and international importance',
          maxLines: 3,
          style: TextStyle(
            color: Color.fromARGB(249, 233, 232, 224),
            fontSize: 15,
          ),
        ),
      ),
      body: SizedBox(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount:myChapter.length ,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyChapterDetails(),
                  ),
                );
              },
            child: Container(
              width: 450,
              height: 50,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.fromLTRB(30, 0, 10,0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white70,
                border: Border.all(color:const Color.fromARGB(95, 0, 0, 0)),
              ),
              child:Row(
                children: [
                  SizedBox(
                    // height: 100,
                    width: 50,
                    
                    child:
                        Text(
                          myChapter[index].title,
                          style:const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      
                    ),

                      SizedBox(
                        width: 270,
                      child:   Text(
                          myChapter[index].description,
                          style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),
                          maxLines: 3,
                          
                        ),
                     ),
                      
                  
                 const SizedBox(
                    // height: 50,
                    width: 30,
                    child: Icon(Icons.navigate_next_sharp),

                  )


                ],

              )
            ),
            );
          },
        ),
      ),
    );
  }
}
class MyChapters {
  final String title;
  final  String description;
  
  // ignore: prefer_typing_uninitialized_variables
  // static var length;
  

  MyChapters({
    required this.title,
    required this.description,
  });
}
List<MyChapters> myChapter = [
  MyChapters(title: '1.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '2.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '3.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '4.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '5.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '6.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '7.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '8.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '9.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '10.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '11.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '12.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '13.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '14.', description: 'ghcdjcjhcjgugshwjcbjschjc'),
  MyChapters(title: '15.', description: 'ghcdjcjhcjgugshwjcbjschjc'),

];


// import 'package:flutter/material.dart';

// class SubjectsDetail extends StatelessWidget {
//   const SubjectsDetail({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//             'Current events of national and international importance',maxLines: 3,style: TextStyle( color:Color.fromARGB(249, 233, 232, 224),fontSize:23, ),),
//       ),
//       body:Column(
//         children: [
//           Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-2',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-3',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//        Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-4',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-5',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-6',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
        

//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-6',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),

//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-7',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),

//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-8',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-9',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
//         Container(
//         width: 400,
//         height: 50,
//         margin:const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.white70,
//               border: Border.all(color: Color.fromARGB(95, 0, 0, 0))),
//           // color: Colors.black87,
//           child: const Center(child:  Text('Chapter-10',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),                                                 
//         ),
        
//         ]
//       )

//       );


//   }
// }

