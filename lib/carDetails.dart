import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycar_app/bodyPage.dart';

import 'main.dart';

class CarDetails extends StatelessWidget {
  final String imgPath;
  final String name;
  final String price;
  
  
  CarDetails({ required this.imgPath, required this.name, required this.price });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:  
      ListView(
      children: [
        
        SizedBox(height: 15.h,),
         Padding(
           padding:  EdgeInsets.only(left: 15.w, right: 15.w),
           child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>MyHomePage());
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  Row(children: [
                     Container(
                      margin: EdgeInsets.only(right: 3.w),
                   height: 9.h,
                   width: 10.w,
                   decoration: BoxDecoration(

                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    
                   ),
                 ),
                      Container(
                      margin: EdgeInsets.only(right: 3.w),
                   height: 9.h,
                   width: 10.w,
                   decoration: BoxDecoration(

                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    
                   ),
                 ),
                      Container(
                      margin: EdgeInsets.only(right: 3.w),
                   height: 9.h,
                   width: 10.w,
                   decoration: BoxDecoration(

                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    
                   ),
                 ),
                  ],)
                  
                ],
              ),
         ),
          SizedBox(height: 15.h,),
        Container(
          margin: EdgeInsets.only(left: 15.w, right: 15.w, top:40.h),
          height: 200.h,
          width:150.w,
          child: Hero(tag: imgPath, child: Image.asset(imgPath, fit: BoxFit.contain, height: 150.h, width: 100.w,)),
        ),
        SizedBox(height: 10.h,),
        //Car Name
        Center(child: Text("Car Name:  "+  name)),
        SizedBox(height: 15.h,),
        //Renter section
        Padding(
          padding: EdgeInsets.only(left:15.w),
          child: Text("Renter", style: TextStyle( fontFamily: "Valera", fontSize: 25, fontWeight: FontWeight.w600),),
        ),
       SizedBox(height: 15.h,),
       // Renters' Name, Message and call row
        Padding(
          padding: EdgeInsets.only(left:15.w, right: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
            //
            Row(
              children: [
               Container(
                 height: 50.h,
                 width: 80.h,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage("assets/ray.jpg")),
                   borderRadius: BorderRadius.circular(120),
                 ),
               ),
                SizedBox(width: 15.w,),
                Text("Femi Bolaji",),  
              ],
            ),
               Row(
              children: [
                Icon(Icons.message),
                SizedBox(width: 15.w,),
                Icon(Icons.call),
                 
              ],
            )
       
          ],),
        ),
        SizedBox(height: 20.h),
        //Location Section
        
         Padding(
           padding: EdgeInsets.only(left: 15.w),
           child: Text("Location", style: TextStyle( fontFamily: "Valera", fontSize: 25, fontWeight: FontWeight.w600)),
         ),
         SizedBox(height: 10.h,),
         //Location ROw
          Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.w),
              height: 40.h,
              margin: EdgeInsets.only(left: 15.w, top: 10.h, right: 15.w),
              width: MediaQuery.of(context).size.width-30.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),

              ),
              child: Row(children: [
              
               Icon(Icons.location_city_sharp),
               Expanded(child: Container(
                 padding: EdgeInsets.only(left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                     hintText:"Location",
                     border: InputBorder.none,
                   ),
                 ),
               ))
              

              ],),

            )
          ],
        ),
        SizedBox(height: 10.h,),
        // Price and Book Now Section
         Padding(
           padding:EdgeInsets.only(left: 15.w, right: 15.w),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(price+ "/Day", style: TextStyle( fontFamily: "Valera", fontSize: 25, fontWeight: FontWeight.w600),),
               ElevatedButton(onPressed: (){}, child: Text("Book Now", style: TextStyle(color: Colors.white),),)
             ],
           ),
         ) 
      ],
      
    )
 
      );
  }
}






 
    //   ListView(
    //   children: [
    //     Hero(tag: imgPath, child: Image.asset(imgPath, fit: BoxFit.contain, height: 150.h, width: 100.w,)),
    //     Text("Renter"),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //       Row(
    //         children: [
    //           CircleAvatar(child: Image.asset("assets/ray.jpg"),),
    //           Text("Femi Bolaji"),  
    //         ],
    //       ),
    //          Row(
    //         children: [
    //           Icon(Icons.message),
    //           Icon(Icons.call),
               
    //         ],
    //       )
       
    //     ],),
    //      Text("Location"),
    //      //Location ROw
    //       Row(
    //       children: [
    //         Container(
    //           padding: EdgeInsets.only(left: 10.w),
    //           height: 40.h,
    //           margin: EdgeInsets.only(left: 15.w, top: 10.h, right: 15.w),
    //           width: MediaQuery.of(context).size.width-30.w,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(15),

    //           ),
    //           child: Row(children: [
              
    //            Icon(Icons.location_city_sharp),
    //            Expanded(child: Container(
    //              padding: EdgeInsets.only(left: 10),
    //              child: TextFormField(
    //                decoration: InputDecoration(
    //                  hintText:"Location",
    //                  border: InputBorder.none,
    //                ),
    //              ),
    //            ))
              

    //           ],),

    //         )
    //       ],
    //     ),
    //      Row(
    //        children: [
    //          Text(price+ "/Day"),
    //          ElevatedButton(onPressed: (){}, child: Text("Book Now", style: TextStyle(color: Colors.white),),)
    //        ],
    //      ) 
    //   ],
      
    // )
 