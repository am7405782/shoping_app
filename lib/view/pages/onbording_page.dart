import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoping_app/core/constant/color.dart';
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
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Image.asset(
                      onBordingList[index].image!,
                    ),
                    Text(
                      onBordingList[index].title!,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Cairo",
                      ),
                    ),
                    const Gap(20),
                    Text(onBordingList[index].body!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Cairo",
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            onBordingList.length,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  margin: const EdgeInsets.all(3),
                                  height: 6,
                                  width: 6,
                                ))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      height: 40,
                      child: MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 0),
                          textColor: Colors.white,
                          onPressed: () {
                            //  controller.next() ;
                          },
                          color: AppColor.primaryColor,
                          child: const Text("Continue")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
