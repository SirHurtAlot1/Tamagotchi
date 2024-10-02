

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tamagotchi/domain/repository/tamagotchi_repo.dart';
import 'package:tamagotchi/presentation/animal_cubit.dart';
import 'package:tamagotchi/presentation/animal_view.dart';

class AnimalPage extends StatelessWidget {
  final TamagotchiRepo tamagotchiRepo;
  const AnimalPage({super.key, required this.tamagotchiRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>AnimalCubit(tamagotchiRepo),
    child: const AnimalView(),);
  }
}