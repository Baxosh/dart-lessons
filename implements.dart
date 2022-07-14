import 'dart:io';

abstract class Eatable {
  String eatable();
}

abstract class Drinkable {
  String drinkable();
}

abstract class Product {
  final String name;

  Product(this.name);
}

class Apple implements Product, Eatable {
  @override
  final String name;
  Apple(this.name);

  @override
  String eatable() => 'Nym-nym, Do you want $name ?';
}

class Coconut implements Product, Drinkable {
  @override
  final String name;
  Coconut(this.name);

  @override
  String drinkable() => 'You can drink this $name.';
}

void main() {
  print(Process.runSync('clear', ['pwd'], runInShell: true).stdout);
  final apple = Apple('Sebcha');
  final coconut = Coconut('Kakos');
  print(coconut.drinkable());
  print(apple.eatable());
}

