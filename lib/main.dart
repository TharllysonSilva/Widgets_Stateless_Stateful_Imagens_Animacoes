import 'package:flutter/material.dart';
import 'package:flutter_test_project/tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
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
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacidade = !opacidade;
              });
            },
            child: Icon(Icons.remove_red_eye_sharp)),
      ),
    );
  }
}
