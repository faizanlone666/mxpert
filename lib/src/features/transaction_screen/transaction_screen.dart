import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/data.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: (){},
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
            }),
      )),
    );
  }
}
