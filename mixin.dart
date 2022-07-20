void main() {
  print(Duck());
}

abstract class Flyable {
  String fly() => 'I\'m flying';
}

abstract class Animal {
  String say() => 'I can say something';
}

abstract class Mechanism {
  String repair() => 'Can you repair me ?';
}

class Duck implements Flyable {
  @override
  String fly() => 'Duck duck duck can we fly somewhere duck';
}

class Airplane extends Flyable {}
