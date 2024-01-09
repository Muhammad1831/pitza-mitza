import 'package:flutter/material.dart';
import 'package:pitza_mitza/constant/solid_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.yellow,
          floatingActionButton: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: SolidColor.primaryColor,
                borderRadius: BorderRadius.circular(50)),
            child: const Icon(
              Icons.add,
              color: SolidColor.secondaryColor,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomAppBar(
              color: SolidColor.textFieldBorderSideColor,
              shape: CircularNotchedRectangle(),
              height: 65,
              notchMargin: 10,
              elevation: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.account_balance,
                        size: 30,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.home,
                        size: 40,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.account_balance,
                        size: 30,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.home,
                        size: 40,
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}


