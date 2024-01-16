class Person {
  String name;
  int age;
  String imageUrl;
  String address;
  String phoneNumber;

  Person({
    required this.name,
    required this.age,
    required this.imageUrl,
    required this.address,
    required this.phoneNumber,
  });
}

List<Person> dummyData = [
  Person(
    name: 'Monkey D. Luffy',
    age: 26,
    imageUrl: 'images/luffy.png',
    address: 'East Blue',
    phoneNumber: 'L232-33',
  ),
  Person(
    name: 'Roronoa Zoro',
    age: 29,
    imageUrl: 'images/zorro.png',
    address: 'Nort',
    phoneNumber: 'R234-23',
  ),
  Person(
    name: 'Nami',
    age: 22,
    imageUrl: 'images/nami.png',
    address: 'Skypiea ',
    phoneNumber: 'N5-1234',
  ),
  Person(
    name: 'Sanji',
    age: 30,
    imageUrl: 'images/sanji.png',
    address: 'Amazon Lily',
    phoneNumber: '555-1234',
  ),
  Person(
    name: 'Tony Tony Chopper',
    age: 34,
    imageUrl: 'images/copper.png',
    address: 'Water Seven',
    phoneNumber: 'T342-1234',
  ),
  Person(
    name: 'Usopp',
    age: 26,
    imageUrl: 'images/usop.png',
    address: '1234 Elm St, Springfield ,provinsi nusa tenggara barat kabupaten lombok timur kecamatan pancor',
    phoneNumber: 'U5-1234',
  ),
  Person(
    name: 'Nico Robin ',
    age: 29,
    imageUrl: 'images/robin.png',
    address: 'Grand Line',
    phoneNumber: 'N393-1234',
  ),
  Person(
    name: 'Franky',
    age: 35,
    imageUrl: 'images/franky.png',
    address: 'Wisky Peak',
    phoneNumber: '555-1234',
  ),
  Person(
    name: 'Brook',
    age: 100,
    imageUrl: 'images/brook.png',
    address: 'Alabasta',
    phoneNumber: 'B38374-23234',
  ),
];
