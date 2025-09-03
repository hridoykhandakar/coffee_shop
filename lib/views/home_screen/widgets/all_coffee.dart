import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class AllCoffee extends StatelessWidget {
  const AllCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 24),
      // color: AppColors.whiteHover,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 24,
          childAspectRatio: 0.8,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: AppColors.white,

            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 12,
                left: 8,
                right: 8,
              ),
              child: Column(
                children: [
                  Stack(children: [Image.asset("assets/images/coffee.png")]),
                  Column(
                    children: [
                      Text(
                        "Caffe Mocha",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.normalActive,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
