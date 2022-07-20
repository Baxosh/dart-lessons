void main() {
  print(Duck().say());
  print(Airplane().repair());
}

mixin Flyable {
  String fly() => 'I\'m flying';
}

mixin Animal {
  String say() => 'I can say something';
}

mixin Mechanism {
  String repair() => 'Can you repair me ?';
}

class Duck with Flyable, Animal {}

class Airplane with Flyable, Mechanism {}
