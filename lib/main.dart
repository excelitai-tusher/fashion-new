import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'View/component/cart.dart';
import 'View/provider/fashion_color.dart';
import 'View/provider/fashion_product_details.dart';
import 'View/fashion_product_details/fashion_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: FashionDetailsController()),
            ChangeNotifierProvider.value(value: FashionColor()),
            ChangeNotifierProvider.value(value: Cart()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            //title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              //textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: Fashion_Product_Details(),
            // routes: {
            //   Fashion_Product_Details.routeName: (context) => Fashion_Product_Details(),
            // },
          ),
        );
      },
      //child: Fashion_Product_Details(),

    );
  }
}

