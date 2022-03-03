import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mycar_app/carDetails.dart';
class CarPage extends StatefulWidget {
  CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext, index){
      return   Container(
            padding: EdgeInsets.only(right: 15.w),
            width: MediaQuery.of(context).size.width - 30.w,
            height: MediaQuery.of(context).size.height - 60.h,
            child: GridView.count(crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 7.h,
            mainAxisSpacing: 15.w,
            childAspectRatio: 0.8,
            children: [
                carBuild('Acura 543','assets/acura_0.png','\$90.99', 'Audi',context),
                 carBuild('Ferrari Spider','assets/ferrari_spider_488_0.png','\$250.99', 'Audi',context),
                  carBuild('Camro 423','assets/camaro_0.png','\$200.99', 'Audi',context),
                   carBuild('Ford','assets/ford_0.png','\$130', 'Audi',context),
                    carBuild('Fiat X3','assets/fiat_0.png','\$150.99', 'Audi',context),
                     carBuild('Land Rover','assets/land_rover_0.png','\$270.99', 'Audi',context),
          

            ],

            ),


          );
     

    }
      
      
          
      
    );
  }
}
 Widget carBuild(String name, String imagePath, String Price, String Company, context) {
   return Padding(
     padding: EdgeInsets.only(left: 15.w, right: 10.w, top: 5.h),
     child: InkWell(
       onTap: (){},
       child: Container(
          
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
              
            )
          ],
          
       ),
       child: Column(     
        children: [
          SizedBox(height: 25.h,),
          Hero(tag: imagePath, child: Container(
            height: 60.h,
            width: 75.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.contain)
            ),
          )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(name, style: TextStyle(
                  color: Colors.black, fontFamily: 'Varela', fontSize: 14.sp)),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 17.w),
            child: Row(children: [
              Text("Price:  ",style: TextStyle(
                    color: Colors.red, fontFamily: 'Varela', fontSize: 15.sp)),
              Text(Price,style: TextStyle(
            color: Colors.black, fontFamily: 'Varela', fontSize: 15.sp, fontWeight: FontWeight.w500)),
  ],
            
            ),
          ),
          ElevatedButton(onPressed: (){
            Get.to(()=> CarDetails(imgPath: imagePath, name: name, price: Price));
          }, child: Text("Check"))
        ],
       ),

     ),
   )
   );
   
 }