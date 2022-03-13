import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CheckInternetWidget extends StatelessWidget {
  const CheckInternetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 50),
      child: FittedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " No Internet",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              Lottie.asset('images/no-internet_img.json',
                  width: 300, height: 240),
              const SizedBox(
                height: 30.0,
              ),
            
            ]),
      ),
    );
  }
}
