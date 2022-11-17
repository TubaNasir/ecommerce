import 'package:camera/camera.dart';
import 'package:ecommerce/camera/camera.dart';
import 'package:ecommerce/cart/cart.dart';
import 'package:ecommerce/checkout/checkout.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/home/home.dart';
import 'package:ecommerce/order/order_details.dart';
import 'package:ecommerce/order/order_model.dart';
import 'package:ecommerce/search/search.dart';
import 'package:ecommerce/signup/signup.dart';
import 'package:ecommerce/store/store_main.dart';
import 'package:ecommerce/storeManager/orders/order_detail_store.dart';
import 'package:ecommerce/storeManager/orders/orders.dart';
import 'package:ecommerce/storeManager/product/add_product.dart';
import 'package:ecommerce/storeManager/product/edit_product.dart';
import 'package:ecommerce/storeManager/storehome/store_home.dart';
import 'package:ecommerce/storeManager/widgets/bottom_nav_bar_store/bottom_nav_bar_store_model.dart';
import 'package:ecommerce/success/success.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/themes.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras[1];
  
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => NavBar()),
            ChangeNotifierProvider(create: (_) => NavBarStore())
          ],
    child: MyApp(camera: firstCamera),
    //create: (_) => NavBar(),
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;
  const MyApp({Key? key, required this.camera}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: Home(camera: camera),
    );
  }
}





