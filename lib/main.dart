import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'bodyPage.dart';
import 'bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () =>
       GetMaterialApp(
         
         debugShowCheckedModeBanner: false,
         
        title: 'Flutter Demo',
       
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 2.0 ,
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios), color: Color(0xFF545D68),),
        title: Text("Car Rent", style: TextStyle(fontWeight:FontWeight.w700, fontSize: 20, color:Color(0xFF545D68))),
        actions: [
           IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none), color: Color(0xFF545D68),)
        
         ]
 ),
  body:  BodyPage(),

  bottomNavigationBar:BottomBar(),
  floatingActionButton: Icon(Icons.car_rental, size: 40,),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,   
   
  
    );
  }
}

