import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: ListView(
          children: [
            Task(
                nome: 'Aprender Flutter',
                foto:
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
            Task(
              nome: 'Aprender Golang',
              foto:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fdev.to%2Flinivecristine%2Fquerido-diario-hoje-descobri-o-golang-4b6&psig=AOvVaw3icu5lWJI5FACG2wsUq8Fo&ust=1686419532618000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDfrbvgtv8CFQAAAAAdAAAAABAK',
            ),
            Task(nome: 'Aprender SQLite'),
            Task(nome: 'Aprender Spring Bot'),
            Task(nome: 'Aprender React Native'),
            Task(nome: 'Aprender React'),
            Task(nome: 'Aprender GetX'),
            Task(nome: 'Aprender MobX'),
          ],
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String fotoPadrao =
      'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large';
  final String? foto;

  const Task({super.key, required this.nome, this.foto});

  // const Task(this.nome, this.foto, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 76,
                        height: 100,
                        child: Image(
                          image: NetworkImage(widget.foto ?? widget.fotoPadrao),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: TextStyle(fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(
                              () {
                                nivel++;
                              },
                            );
                            print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Nível: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
