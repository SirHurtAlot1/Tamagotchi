import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tamagotchi/domain/models/animal.dart';
import 'package:tamagotchi/presentation/animal_cubit.dart';

class AnimalView extends StatelessWidget {
  const AnimalView({super.key});

  @override
  Widget build(BuildContext context) {
    final animalCubit = context.read<AnimalCubit>();
    final deathDuckImage = Image.asset('assets/images/deathduck.png');
    final aliveDuckImage = Image.asset('assets/images/aliveduck.png');
    final hungryDuckImage = Image.asset('assets/images/hungryduck.png');

    return Scaffold(
      body: BlocBuilder<AnimalCubit, Animal>(builder: (context, animal) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Builder(builder: (context) {
                if (!animal.isAlive) {
                  return deathDuckImage;
                } else if (animal.isHungry) {
                  return hungryDuckImage;
                }
                return aliveDuckImage;
              }),
            ),
            FloatingActionButton(
              onPressed: () => animalCubit.feedAnimal(animal),
              child: const Icon(
                Icons.cake,
                size: 45,
              ),
            ),
          ],
        );
      }),
    );
  }
}
