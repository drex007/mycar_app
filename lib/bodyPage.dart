import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mycar_app/carPage.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({ Key? key }) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return ListView(
      children: [
        // Search row 
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
              
               Icon(Icons.search),
               Expanded(child: Container(
                 padding: EdgeInsets.only(left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                     hintText:"Find any car",
                     border: InputBorder.none,
                   ),
                 ),
               ))
              

              ],),

            )
          ],
        ),
         SizedBox(height: 15.h,),
         //Tab Sections
        Container(
          margin: EdgeInsets.only(left: 15.w),
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelStyle: TextStyle(fontWeight: FontWeight.w900),
            labelColor: Colors.black,
            labelPadding: EdgeInsets.only(right: 40.w),
            isScrollable: true,
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                    child: Text('Luxury Cars',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  ),
             Tab(
                    child: Text('Family Cars',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  ),
            Tab(
                    child: Text('Carriage Van',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                        )),
                  )

            ]),
        ),
        SizedBox(height: 5.h),
        // Available Near You
        Container(
          margin: EdgeInsets.only(left: 15.w),
          child: Row(children: [
            Text("Available Near You", style: TextStyle(
              fontFamily: "Valera", fontSize: 15.sp, fontWeight: FontWeight.w600,
            ),),
           
          ],),
        ),
            // TabBody
        Container(
          height: MediaQuery.of(context).size.height - 50.0,
          width: double.infinity,
          child: TabBarView(
            controller: _tabController,
            children: [
                CarPage(),
                CarPage(),
                CarPage(),
            ]
          )
        )

      ],
    );
  }
}