import 'package:flutter/material.dart';
import 'package:shoping_app/data/data_source/static.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBordingList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Image.asset(
                onBordingList[index].image!,
              ),
              Text(onBordingList[index].body!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
