import 'package:flutter/material.dart';

import '../../../../src.dart';

class NewsList extends StatelessWidget {
  const NewsList(this.items, {super.key});
  final List<News> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final newsInfo = items[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => NewsDetailView(newsItems: items[index]),
            ),
          ),
          child: SizedBox(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    width: 115,
                    height: 95,
                    fit: BoxFit.cover,
                    newsInfo.image,
                  ),
                ),
                AppSpace.sizedW15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsInfo.title,
                      style: AppTextStyles.poppinsBlack12w500,
                    ),
                    AppSpace.sized10,
                    Text(
                      newsInfo.subTitle,
                      style: AppTextStyles.poppinsBlack12w400,
                    ),
                    AppSpace.sized10,
                    Text(
                      newsInfo.date,
                      style: AppTextStyles.poppinsBlackItalic12w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
