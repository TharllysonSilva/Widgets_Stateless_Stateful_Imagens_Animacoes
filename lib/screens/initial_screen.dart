import 'package:flutter/material.dart';
import 'package:flutter_test_project/components/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              nome: 'Aprender Flutter',
              foto: 'assets/images/dash.jpg',
              dificuldade: 3,
            ),
            Task(
              nome: 'Andar de Bike',
              foto: 'assets/images/bike.jpg',
              dificuldade: 2,
            ),
            Task(
              nome: 'Ler os livros',
              foto: 'assets/images/livros.jpg',
              dificuldade: 4,
            ),
            Task(
              nome: 'Meditar',
              foto: 'assets/images/meditar.jpeg',
              dificuldade: 5,
            ),
            Task(
              nome: 'Jogar video game',
              foto: 'assets/images/jogar.jpg',
              dificuldade: 1,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye_sharp)),
    );
  }
}
