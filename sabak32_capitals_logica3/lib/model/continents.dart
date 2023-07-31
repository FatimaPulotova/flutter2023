import 'package:flutter/material.dart';
import 'package:sabak32_capitals_logica3/constants/app_colors.dart';

class Continents {
  const Continents(
      {required this.color, required this.name, required this.image});
  final String name;
  final String image;
  final Color color;
}

const Continents asia =
    Continents(name: 'Asia', image: 'asia', color: AppColors.asiaColor);
const Continents africa =
    Continents(name: 'Africa', image: 'africa', color: AppColors.africaColor);
const Continents northAmerica = Continents(
    name: 'NorthAmerica',
    image: 'northAmerica',
    color: AppColors.northAmericaColor);
const Continents southAmerica = Continents(
    name: 'SouthAmerica',
    image: 'southAmerica',
    color: AppColors.sourthAmericaColor);
const Continents australia = Continents(
    name: 'Australia', image: 'australia', color: AppColors.australiaColor);
const Continents europa =
    Continents(name: 'Europa', image: 'europa', color: AppColors.europaColor);

List<Continents> continentsList = [
  asia,
  africa,
  northAmerica,
  southAmerica,
  australia,
  europa,
];
