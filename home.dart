// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  var title;

  MyHomePage({Key? key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _tarefa;
  List<String> listaDeTarefa = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 130, 244),
        title: Center(child: Text(widget.title.toString())),
      ),
      body: Column(children: [
        Row(children: [
          Expanded(
              child: Center(
            child: Text('LISTA DE TAREFAS ',
                style: TextStyle(
                  height: 3.0,
                  fontSize: 15.2,
                  fontWeight: FontWeight.bold,
                )),
          )),
        ]),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tarefa',
                          hintText: 'Adicione sua tarefa '),
                      onChanged: (text) {
                        _tarefa = text;
                      }),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Container(
                      child: Text(
                    'Adiconar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  onPressed: () {
                    setState(() {
                      _AdicionandoTarefa();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: listaDeTarefa == null ? 0 : listaDeTarefa.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: ListTile(
                      //return new ListTile(
                      onTap: null,
                      // ignore: prefer_const_constructors
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: const Text(''),
                      ),
                      title: Row(children: <Widget>[
                        Expanded(child: Text(listaDeTarefa[index])),
                      ])),
                );
              }, //itemBuilder
            ),
          ),
        ),
      ]),
    );
  }

  void _AdicionandoTarefa() {
    listaDeTarefa.add(_tarefa);
  }
}
