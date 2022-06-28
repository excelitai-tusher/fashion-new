import 'package:fashion_app/View/component/size%20color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../component/fashion_cart.dart';
import '../component/size button.dart';

class Fashion_Product_Details extends StatefulWidget {
  const Fashion_Product_Details({Key? key}) : super(key: key);
  //static const routeName = '/product_details';

  @override
  State<Fashion_Product_Details> createState() => _Fashion_Product_DetailsState();
}

class _Fashion_Product_DetailsState extends State<Fashion_Product_Details> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF6000),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Center(
            child: Text(
              "Product Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.6),
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SPERrJdy4jJTNn-ILR_tFx9dPliGis3iyWF0EyzOqj2sDlXY4VM47ta8yD6EjOIkRpI&usqp=CAU"),
                      fit: BoxFit.fill,
                    ),
                    // image: DecorationImage(
                    //   image: NetworkImage("${args.toString()}")
                    // ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SPERrJdy4jJTNn-ILR_tFx9dPliGis3iyWF0EyzOqj2sDlXY4VM47ta8yD6EjOIkRpI&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SPERrJdy4jJTNn-ILR_tFx9dPliGis3iyWF0EyzOqj2sDlXY4VM47ta8yD6EjOIkRpI&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SPERrJdy4jJTNn-ILR_tFx9dPliGis3iyWF0EyzOqj2sDlXY4VM47ta8yD6EjOIkRpI&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Ladies Stylish Long Stitched kameez By /n Guljee",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18..sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: '৳2,000.0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Colors.green,
                          ),
                          children: <InlineSpan>[
                            WidgetSpan(
                                // baseline: TextBaseline.alphabetic,
                                child: SizedBox(width: 10.w)),
                            TextSpan(
                              text: '৳ 2,500.0',
                              style: TextStyle(
                                  color: Theme.of(context).errorColor,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 10.w,
                            )),
                            TextSpan(
                              text: '50% OFF',
                              style: TextStyle(
                                color: Color(0xffFF6000),
                                fontSize: 14.sp,
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 8.h,
                      color: Color(0xffFF6000),
                    ),
                    Icon(
                      Icons.star,
                      size: 8.h,
                      color: Color(0xffFF6000),
                    ),
                    Icon(
                      Icons.star,
                      size: 8.h,
                      color: Color(0xffFF6000),
                    ),
                    Icon(
                      Icons.star,
                      size: 8.h,
                      color: Color(0xffFF6000),
                    ),
                    Icon(
                      Icons.star,
                      size: 8.h,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text(
                      "(10 Reviews)",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18..sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Material:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Color(0xff939B9E),
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'COTTON',
                              style: TextStyle(
                                color: Color(0xff444444),
                                fontSize: 14.sp,
                              ),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 10.w,
                            )),
                            TextSpan(
                                text: 'Stock:',
                                style: TextStyle(
                                  color: Color(0xff939B9E),
                                  fontSize: 14.sp,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'READY STOCK',
                                    style: TextStyle(
                                      color: Color(0xff939B9E),
                                      fontSize: 14.sp,
                                    ),
                                  )
                                ])
                          ]),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Size"),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizeButton(
                              buttonHeight: 25,
                              buttonWidth: 25,
                              title: "S",
                              size: 1,
                            ),
                            SizeButton(
                              buttonHeight: 25,
                              buttonWidth: 25,
                              title: "M",
                              size: 2,
                            ),
                            SizeButton(
                              buttonHeight: 25,
                              buttonWidth: 25,
                              title: "L",
                              size: 3,
                            ),
                            SizeButton(
                              buttonHeight: 25,
                              buttonWidth: 25,
                              title: "XL",
                              size: 4,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*.2,
                            ),
                            Text(
                              "**Required",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12.h,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Color"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Purple",
                              size: 1,
                            ),
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Blue",
                              size: 2,
                            ),
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Black",
                              size: 3,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width* 0.15,
                            ),
                            Text(
                              "**Required",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Green",
                              size: 4,
                            ),
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Yellow",
                              size: 4,
                            ),
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Orange",
                              size: 4,
                            ),
                            SizeColor(
                              buttonHeight: 25,
                              buttonWidth: 45,
                              title: "Red",
                              size: 4,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
