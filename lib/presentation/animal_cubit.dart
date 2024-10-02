
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tamagotchi/domain/models/animal.dart';
import 'package:tamagotchi/domain/repository/tamagotchi_repo.dart';

class AnimalCubit extends Cubit<Animal>{

  final TamagotchiRepo tamagotchiRepo;


  AnimalCubit(this.tamagotchiRepo) : super(Animal(id: 1)){
    loadAnimal();
  }

  Future<void> loadAnimal() async{
    final animal = await tamagotchiRepo.getAnimal();
    emit(animal);
  }

  Future<void> feedAnimal(Animal animal) async{
    await tamagotchiRepo.feedAnimal(animal);
    print('current animal hunger:' + animal.hunger.toString());
    loadAnimal();

  }

  Future<void> killAnimal(Animal animal) async{
    await tamagotchiRepo.killAnimal(animal);
    print(animal.isAlive);
    loadAnimal();

  }

  Future<void> makeAnimalHungry(Animal animal) async{
    await tamagotchiRepo.makeAnimalHungry(animal);
    loadAnimal();

  }

  Future<void> resurectAnimal(Animal animal) async{
    await tamagotchiRepo.resurectAnimal(animal);
    loadAnimal();
  }

  void startTamagotchi(Animal animal){
    tamagotchiRepo.startTamagotchi(animal);
    loadAnimal();
  }

  

}