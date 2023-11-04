import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.25,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: fPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10.0),
                    Text(
                      fHomeScreenTitle,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      fHomeScreenSubTitle,
                      style: Theme.of(context).textTheme.displayLarge,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 170,
              width: 340,
              margin: const EdgeInsets.symmetric(horizontal: 34.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 125, 121),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fTotalBalance,
                                style: Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$ 0",
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                          const Icon(Icons.more_horiz, color: Colors.white),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                    radius: 13,
                                    backgroundColor:
                                        Color.fromARGB(255, 85, 145, 141),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(fIncome,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                              ],
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                "\$ 0",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                    radius: 13,
                                    backgroundColor:
                                    Color.fromARGB(255, 85, 145, 141),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(fExpenses,
                                    style: Theme.of(context).textTheme.headlineSmall),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Text(
                                "\$ 0",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
