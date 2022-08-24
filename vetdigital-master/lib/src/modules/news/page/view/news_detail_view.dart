import 'package:flutter/material.dart';

import '../../../../src.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key, required this.newsItems});
  final News newsItems;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            newsItems.title,
            style: AppTextStyles.poppinsBlack12w500,
          ),
          AppSpace.sized10,
          Text(
            newsItems.subTitle,
            style: AppTextStyles.poppinsBlack12w400,
          ),
          Image.network(
            newsItems.image,
            width: 366,
            height: 190,
          ),
          AppSpace.sized10,
          Text(
            newsItems.description,
            style: AppTextStyles.poppinsBlackItalic12w400,
          ),
        ],
      ),
    );
  }
}
