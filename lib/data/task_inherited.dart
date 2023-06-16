import 'package:flutter/material.dart';
import 'package:flutter_test_project/components/tasks.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task(
        nome: 'Aprender Flutter',
        foto:
            'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
        dificuldade: 3),
    Task(
        nome: 'Andar de Bike',
        foto:
            'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
        dificuldade: 2),
    Task(
        nome: 'Ler os livros',
        foto:
            'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
        dificuldade: 4),
    Task(
        nome: 'Meditar',
        foto:
            'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
        dificuldade: 5),
    Task(
        nome: 'Jogar video game',
        foto: 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
        dificuldade: 1),
  ];

  void newTask(String nome, String foto, int dificuldade) {
    taskList.add(Task(nome: nome, foto: foto, dificuldade: dificuldade));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
