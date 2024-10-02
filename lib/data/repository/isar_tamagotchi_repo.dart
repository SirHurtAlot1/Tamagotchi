/*

HANDLES MAIN APP FUNCTIONS FROM TAMAGOTCHI_REPO.DART


*/

import 'dart:async';

import 'package:isar/isar.dart';
import 'package:tamagotchi/data/models/isar_animal.dart';
import 'package:tamagotchi/domain/models/animal.dart';
import 'package:tamagotchi/domain/repository/tamagotchi_repo.dart';

class IsarTamagotchiRepo implements TamagotchiRepo {
  final Isar db;

  IsarTamagotchiRepo(this.db);

  @override
  Future<void> feedAnimal(Animal animal) async{
    startTamagotchi(animal);
    final isarAnimal = IsarAnimal.fromDomain(animal.eat());
    return db.writeTxn(() => db.isarAnimals.put(isarAnimal));
    
  }

  @override
  Future<void> killAnimal(Animal animal) {
    final isarAnimal = IsarAnimal.fromDomain(animal.die());

    return db.writeTxn(() => db.isarAnimals.put(isarAnimal));
  }

  @override
  Future<void> makeAnimalHungry(Animal animal) async {
    startTamagotchi(animal);
    final isarAnimal = IsarAnimal.fromDomain(animal.getHungry());
    return db.writeTxn(() => db.isarAnimals.put(isarAnimal));
  }

  @override
  Future<void> resurectAnimal(Animal animal) async {
    final isarAnimal = IsarAnimal.fromDomain(animal.resurect());
    return db.writeTxn(() => db.isarAnimals.put(isarAnimal));
  }

  @override
  Future<void> createAnimal() async {
    Animal animal = Animal(id: 1);
    final isarAnimal = IsarAnimal.fromDomain(animal);
    return db.writeTxn(
      () => db.isarAnimals.put(isarAnimal),
    );
  }
  
  @override
  Future<Animal> getAnimal() async {
    final animal = await db.isarAnimals.where().findFirst();
    print(animal!.hunger);
    return animal!.toDomain();
    
  }
  
  @override
  Future<void> startTamagotchi(Animal animal) async {
    await Future.delayed(const Duration(seconds: 5), () async {
      print('hello');
      makeAnimalHungry(animal);
      checkAnimalStats(animal);
      
      
    },
    );

    
  }
  
  @override
  void checkAnimalStats(Animal animal) async{
    animal = await getAnimal();
    if (animal.hunger == 0) {
      killAnimal(animal);
      
    }
  }
}
