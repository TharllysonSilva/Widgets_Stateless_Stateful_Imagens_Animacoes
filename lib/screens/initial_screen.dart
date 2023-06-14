import 'package:flutter/material.dart';
import 'package:flutter_test_project/components/tasks.dart';
import 'package:flutter_test_project/screens/form_screen.dart';

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
      body: ListView(
        children: const [
          Task(
            nome: 'Aprender Flutter',
            foto:
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            dificuldade: 3,
          ),
          Task(
            nome: 'Andar de Bike',
            foto:
                'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
            dificuldade: 2,
          ),
          Task(
            nome: 'Ler os livros',
            foto:
                'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
            dificuldade: 4,
          ),
          Task(
            nome: 'Meditar',
            foto:
                'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
            dificuldade: 5,
          ),
          Task(
            nome: 'Jogar video game',
            foto: 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
            dificuldade: 1,
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
