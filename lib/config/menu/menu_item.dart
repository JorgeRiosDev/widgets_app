import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'counter',
      subTitle: 'contador con riverpod',
      link: '/counter',
      icon: Icons.add_circle_outline),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estililzado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la aplicacion',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'cambiar tema de la aplicacion',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
  MenuItem(
      title: 'video',
      subTitle: 'reproductor de videos',
      link: '/video',
      icon: Icons.play_circle),
];
