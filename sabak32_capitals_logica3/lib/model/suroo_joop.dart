import 'package:flutter/material.dart';

class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({required this.text, required this.tuuraJoop});

  final String text;
  final bool tuuraJoop;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'paris',
  jooptor: [
    Joop(text: 'Germania', tuuraJoop: false),
    Joop(text: 'Finladia', tuuraJoop: false),
    Joop(text: 'France', tuuraJoop: true),
    Joop(text: 'Italy', tuuraJoop: false),
  ],
);
const Suroo s2 = Suroo(
  text: 'Bern',
  image: 'bern',
  jooptor: [
    Joop(text: 'Russia', tuuraJoop: false),
    Joop(text: 'Switherland', tuuraJoop: true),
    Joop(text: 'England', tuuraJoop: false),
    Joop(text: 'Spain', tuuraJoop: false),
  ],
);
const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'brusel',
  jooptor: [
    Joop(text: 'Makedonia', tuuraJoop: false),
    Joop(text: 'Portugal', tuuraJoop: false),
    Joop(text: 'Albania', tuuraJoop: false),
    Joop(text: 'Belgium', tuuraJoop: true),
  ],
);
const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'copenhagenDenmark',
  jooptor: [
    Joop(text: 'Denmark', tuuraJoop: true),
    Joop(text: 'Ukraina', tuuraJoop: false),
    Joop(text: 'Poland', tuuraJoop: false),
    Joop(text: 'Norway', tuuraJoop: false),
  ],
);
const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin-Germany-1',
  jooptor: [
    Joop(text: 'Germany', tuuraJoop: true),
    Joop(text: 'Sweden', tuuraJoop: false),
    Joop(text: 'Greece', tuuraJoop: false),
    Joop(text: 'Turkey', tuuraJoop: false),
  ],
);

List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
