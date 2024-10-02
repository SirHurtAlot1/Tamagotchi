/*
  this is animal object

  Properties:
  - id
  - icon
  - 
  hunger
  - isAlive
  - isHungry
*/


class Animal {
  final int id;

  final bool isHungry;
  final bool isAlive;
  //counter for hunger start. can be from 3 to 0. 0 means death
  final int hunger;

  Animal(
      {required this.id,
      this.isHungry = false,
      this.isAlive = true,
      this.hunger = 3});

  //eat
  Animal eat() {
    return Animal(
      id: id,
      isAlive: true,
      isHungry: false,
      hunger: 3,
    );
  }

  //get hungry
  Animal getHungry() {
    if (hunger == 0) {
      return die();
    } else {
      return Animal(
        id: id,
        isAlive: true,
        isHungry: true,
        hunger: hunger - 1,
      );
    }
  }

  //die
  Animal die() {
    return Animal(
      id: id,
      isAlive: false,
      isHungry: true,
      hunger: 0,
    );
  }

  Animal resurect(){
    return Animal(
      id: id,
      isAlive: true,
      isHungry: false,
      hunger: 3,
    );
  }
}
