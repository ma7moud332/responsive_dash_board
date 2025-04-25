import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item.dart';

import '../../models/all_expensess_item_model.dart';
import '../../utils/app_images.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      date: 'April 2025',
      title: 'Balance',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      date: 'April 2025',
      title: 'Expense',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      date: 'April 2025',
      title: 'Income',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIdex(index);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: AllExpensessItem(
                    isSelected: selectedIndex == index, itemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIdex(index);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIdex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
