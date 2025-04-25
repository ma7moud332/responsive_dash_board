import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'all_expensess_header.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}


