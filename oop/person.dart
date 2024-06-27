class Person {
  String? name;
  int? _age;

  _talk() {
    return _age;
  }

  static run() {
    print('Person is running');
  }

  // Person() {
  //   print('This is default constructor');
  // }

  //paramater constructor
  Person(this.name, this._age);

  // named constructor
  // Person.Vietnam() {
  //   name = 'Vietnam';
  //   _age = 22;
  // }

  // Person.Singapore() {
  //   name = 'Singapore';
  //   _age = 25;
  // }
}