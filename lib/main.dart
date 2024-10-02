import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tamagotchi/data/models/isar_animal.dart';
import 'package:tamagotchi/data/repository/isar_tamagotchi_repo.dart';
import 'package:tamagotchi/domain/repository/tamagotchi_repo.dart';
import 'package:tamagotchi/presentation/animal_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open([IsarAnimalSchema], directory: dir.path);

  final tamagotchiRepo = IsarTamagotchiRepo(isar);

  tamagotchiRepo.createAnimal();

  runApp(MyApp(
    tamagotchiRepo: tamagotchiRepo,
  ));
}

class MyApp extends StatelessWidget {
  final TamagotchiRepo tamagotchiRepo;
  const MyApp({super.key, required this.tamagotchiRepo});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimalPage(tamagotchiRepo: tamagotchiRepo),
    );
  }
}
