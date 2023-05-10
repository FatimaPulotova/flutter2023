class Student {
  Student({
    required this.id,
    required this.name,
    required this.surName,
    required this.age,
    this.phone,
    required this.email,
    this.address,
    required this.group,
    this.gender,
    this.marriage,
    required this.password,
  });
  final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
  final String password;
}

final aybek = Student(
  id: 1,
  name: 'Aybek',
  surName: 'Momonov',
  age: 22,
  email: 'aybek@mail',
  group: 1,
  phone: '+79684367787',
  address: 'Moskva',
  gender: '',
  marriage: '',
  password: "aybek76",
);

final chasan = Student(
  id: 2,
  name: 'Chasan',
  surName: 'Ikramov',
  age: 19,
  email: 'Chasan@mail',
  password: "chasan2004",
  group: 1,
  phone: '+79774367787',
  address: 'Bishkek',
  gender: '',
  marriage: 'single',
);

final umar = Student(
  id: 3,
  name: 'Umar',
  surName: 'Ikramov',
  age: 18,
  email: 'umar@mail',
  group: 1,
  phone: '+79631737787',
  address: 'Moskva',
  gender: 'male',
  marriage: '',
  password: "umar2005",
);

final fatima = Student(
  id: 4,
  name: 'Fatima',
  surName: 'Pulotova',
  age: 39,
  email: 'fatima@mail',
  group: 1,
  phone: '+79777048259',
  address: 'Moskva',
  gender: '',
  marriage: 'female',
  password: "fatima84",
);

Student jazgul = Student(
  id: 5,
  name: 'Jazgul',
  surName: 'Ozbekova',
  age: 39,
  email: 'jazgul@mail',
  group: 1,
  phone: '+79682868687',
  address: 'Moskva',
  gender: '',
  marriage: '',
  password: "jazgul84",
);
