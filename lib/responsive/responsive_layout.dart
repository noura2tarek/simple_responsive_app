import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < mobileWidth) {
            return mobileBody;
          } else {
            return desktopBody;
          }
        },
    );
  }
}

// we cam make our home screen responsive by using one of the following:
// 1- make the page returns layout builder widget and check constraints.
//2- Builder using media query.
//3- using responsive builder package.

/*
  return  Builder(
        builder: (BuildContext context) {
          if(MediaQuery.of(context).size.width <= 565) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  //textScaleFactor: 0.8,
                ),
                child: mobileBody,
            );
          }

         return MediaQuery(
             data: MediaQuery.of(context).copyWith(
               textScaler: const TextScaler.linear(1.25),  //make text bigger with a certain ratio.
             ),
             child: desktopBody,
          );

      },


      ),
 */
