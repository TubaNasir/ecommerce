import 'package:ecommerce/constants.dart';
import 'package:ecommerce/model/BottomNavBar_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    int numOfitem = 5;

    return Container(
        height: 100.0,
        decoration: BoxDecoration(
          gradient: PrimaryGradientColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  title,
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.justify,
              ),
          if (context.watch<NavBar>().page.toString() == 'home') InkWell(
            borderRadius: BorderRadius.circular(100),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: SecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.notifications_active_outlined),
                ),
                if (numOfitem != 0)
                  Positioned(
                    top: -3,
                    right: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        //border: Border.all(width: 1.5, color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "$numOfitem",
                          style: TextStyle(
                            fontSize: 10,
                            height: 1,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          )
            ],
          ),

        )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
