import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/data.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/home_screen_card_widget.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/home_screen_header.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/home_screen_header_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 320,
              child: HomeScreenHeaderWidget(
                size: size,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fTransactionHistory,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      fSeeAll,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
              itemCount: listData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      listData[index].logo,
                      height: 40,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listData[index].itemName,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        listData[index].quantity,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        listData[index].date,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  trailing: Text(
                     "\$ ${listData[index].price}",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                );
              })
        ],
      ),
    ));
  }
}
