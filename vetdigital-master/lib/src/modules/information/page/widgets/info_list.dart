import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../src.dart';

class MenuList extends StatelessWidget {
  const MenuList(this.items, {super.key});   

  final List<InfoMenu> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final info = items[index];
        return Card(
          color: AppColors.mainColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(info.icon),
              Text(info.title),
            ],
          ),
        );
      },
    );
  }
}
