/*
 converts animal model to isar animal model to store in local isar database



*/
import 'package:isar/isar.dart';
import 'package:tamagotchi/domain/models/animal.dart';

//to generate isar animal object, run: dart run build_runner build
part 'isar_animal.g.dart';

@collection
class IsarAnimal {
  Id id = Isar.autoIncrement;

  late bool isHungry;
  late bool isAlive;
  late int hunger;


  //convert isar object to animal object to display
  Animal toDomain() {
    return Animal(
      id: id,
      isAlive: isAlive,
      isHungry: isHungry,
      hunger: hunger,
    );
  }

  //converts animal object to isar to store in database
  static IsarAnimal fromDomain(Animal animal){
    return IsarAnimal()
    ..id = animal.id
    ..isHungry = animal.isHungry
    ..isAlive = animal.isAlive
    ..hunger = animal.hunger;


  }
}
