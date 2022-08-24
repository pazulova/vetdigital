import '../../../../src.dart';

class InfoSubMenu {
  InfoSubMenu({
    required this.image,
    required this.id,
    required this.items,
  });

  final String image;
  final int id;
  final List<InfoSubMenuItem> items;
}

class InfoSubMenuItem {
  InfoSubMenuItem({
    required this.id,
    required this.icon,
    required this.title,
    required this.info,
  });

  final int id;
  final String icon;
  final String title;
  final InfoModel info;
}

final bd = InfoSubMenu(
  image: Assets.images.bodomal.path,
  id: 1,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоютар',
      info: animalFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: animalDisease,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыру',
      info: inseminationOfAnimals,
    ),
  ],
);

final echki = InfoSubMenu(
  image: Assets.images.koyEchkiler.path,
  id: 2,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоютар',
      info: sheepFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: sheepShearing,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыру',
      info: inseminationOfSheep,
    ),
  ],
);

final jylky = InfoSubMenu(
  image: Assets.images.jilki.path,
  id: 3,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоютар',
      info: horseFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: horseSickness,
    ),
    InfoSubMenuItem(
      id: 3,
      icon: Assets.icons.uruktandiruu.path,
      title: 'Уруктандыру',
      info: horseInsemination,
    ),
  ],
);

final took = InfoSubMenu(
  image: Assets.images.took.path,
  id: 4,
  items: [
    InfoSubMenuItem(
      id: 1,
      icon: Assets.icons.toyut.path,
      title: 'Тоютар',
      info: chickenFeed,
    ),
    InfoSubMenuItem(
      id: 2,
      icon: Assets.icons.ooruu.path,
      title: 'Оорусу',
      info: chickenDisease,
    ),
  ],
);
