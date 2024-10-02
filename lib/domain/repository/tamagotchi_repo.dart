
/*
  this is what the app can do



*/


import 'package:tamagotchi/domain/models/animal.dart';

abstract class TamagotchiRepo{

  //creates animal
  Future<void> createAnimal();

  //gets animal from database
  Future<Animal> getAnimal();


  //feeds animal to make it not hungry
  Future<void> feedAnimal(Animal animal);

  //makes animal hungry
  Future<void> makeAnimalHungry(Animal animal);

  //basically kills animal
  Future<void> killAnimal(Animal animal);

  //heroes never die
  Future<void> resurectAnimal(Animal animal);


  //starts all game processes
  Future<void> startTamagotchi(Animal animal);

  //checks animal's stats and kils animal if hunger is low
  void checkAnimalStats(Animal animal);


  
}