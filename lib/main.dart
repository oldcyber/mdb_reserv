// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:mdb_reserv/pages/reserv_page.dart';

String session = '321321321';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Резервное оборудование',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: AppBar(
              leading: const Icon(Icons.arrow_back),
              title: const Text('СУБД Оборудование'),

              //centerTitle: true,
            ),
          ),
          body: Center(
            child: ReservPage(),
          ),
        ),
      ),
    );
  }
}

class ReservPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ReservPage({Key? key}) : super(key: key);

  @override
  State<ReservPage> createState() => _ReservPageState();
}

class _ReservPageState extends State<ReservPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: Container(
                  color: Colors.red[100],
                  child: SizedBox(
                    height: 30.0,
                    child: Align(
                      alignment: Alignment(-0.95, 0),
                      child: Text('Цех Аммиака-2 ▼'),
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Text('Новомосковский Азот. ▼'),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red[200],
                  child: LeftColumn(),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[100],
                  child: RightColumn(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------LeftColumn
class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red[300],
                  child: Text('Сигнализаторы ▼'),
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Text('Условия'),
              )
            ],
          ),
        ),
        Container(
          color: Colors.red[400],
          height: MediaQuery.of(context).size.height / 1.7,
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40.0,
                      height: 20.0,
                      child: Center(child: Text('$index')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.symmetric(
                          vertical: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: Text('Строка ${index + 1}'),
                      width: 150.0,
                      height: 20.0,
                    ),
                    Expanded(
                      child: Text(
                        'info ',
                        maxLines: 3,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------RightColumn
class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(child: Text('RightColumn')),
      ],
    );
  }
}
