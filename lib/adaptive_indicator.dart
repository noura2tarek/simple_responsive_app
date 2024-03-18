import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget {
  const AdaptiveIndicator({Key? key, required this.os}) : super(key: key);
  final String os;

  @override
  Widget build(BuildContext context) {
    if(os == "android") {
      return const CircularProgressIndicator();
    } else if (os == "ios") {
      return  const CupertinoActivityIndicator();
    }
    return const CircularProgressIndicator();
  }
}