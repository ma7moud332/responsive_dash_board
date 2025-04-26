import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Mahmoud Reda',
        subtitle: 'mahmoud@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Mahmoud Reda',
        subtitle: 'mahmoud@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Mahmoud Reda',
        subtitle: 'mahmoud@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoModel: items[index]));
    //       }),
    // );
  }
}
