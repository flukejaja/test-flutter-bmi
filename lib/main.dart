//main.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_bmi/bmi_result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Profile(),
    );
  }
}

class BmiText extends StatefulWidget {
  @override
  _BmiTextState createState() => _BmiTextState();
}

class _BmiTextState extends State<BmiText> {
  TextEditingController weightCtr = TextEditingController();
  TextEditingController hightCtr = TextEditingController();
  String result="ไม่ระบุ";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: hightCtr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ส่วนสูง',
                  hintText: 'กรุณากรอกส่วนสูง',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: weightCtr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'น้ำหนัก',
                  hintText: 'กรุณากรอกน้ำหนัก',
                ),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('คำนวณ'),
              onPressed: () {
                print("กดปุ่มคำนวณเเล้ว");
                if(hightCtr.text == "" || weightCtr.text == "") {
                  print("ไม่มีค่าส่งจากผู้ใช้");
                }else{
                  var h = double.parse(hightCtr.text);
                  var w = double.parse(weightCtr.text);
                  print("น้ำหนัก: ${w}");
                  print("ส่วนสูง: ${h}");
                  var bmi = w/ pow(h*0.01, 2.0);
                  print(bmi);
                  if(bmi >= 30 ){
                    result = "อ้วนมาก";
                  }
                  if(bmi >= 25 && bmi < 30){
                    result = "อ้วน";
                  }
                  if(bmi >= 18.6 && bmi < 24){
                    result = "น้ำหนักปกติ";
                  }
                  if(bmi <= 18.5 ){
                    result = "ผอมเกินไป";
                  }
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => BmiResult(result: result),
                ));
                }
              },
            ),
          ],
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[300],
                child: const Center(child: Text('กรุณากรอกข้อมูลส่วนตัว')),
              ),
              Container(
                  height: 300,
                  //color: Colors.amber[500],
                  child: BmiText()),
            ],
          )
      ),
    );
  }
}

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROFILE',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: const Text('PROFILE'),
          ),
        ),
        body: Center(
          child :ListView(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.deepOrange.shade300],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5, 0.9],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.red.shade300,
                          minRadius: 35.0,
                          child: Icon(
                            Icons.favorite,
                            size: 30.0,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 60.0,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                'https://www.diswow89.com/wp-content/uploads/2021/12/Gojo-Jujutsu-Kaisen-Eyes-Uncovered.jpg'),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red.shade300,
                          minRadius: 35.0,
                          child: Icon(
                            Icons.message,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Satoru Gojo',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Beginner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'DATE',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '10/1/1000',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'instagram',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Satoru.123',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'My favorite',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => munu1()),
                  );
                },
                color:Colors.orangeAccent,

                child: Text(
                  'MENU',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class _DataTableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: const Text('Workout Program'),
            ),
          ),
          body: ListView(children: <Widget>[
            Container(
              height: 50,
              color:Colors.orangeAccent,
              child: Center (child: Text(
                'Bodyweight Workout',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
              ),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'Beginner',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Intermediate',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Advanced',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Plank')),
                  DataCell(Text('Up-Down Plank')),
                  DataCell(Text('Up-down Plank to Push-up')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Reverse lunge')),
                  DataCell(Text('Split Squat Jump')),
                  DataCell(Text('180 Split Squat Jump')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Bodyweight March')),
                  DataCell(Text('High Knees')),
                  DataCell(Text('Quick high Knees')),
                ]),
                DataRow(cells: [
                  DataCell(Text('laterral lunge')),
                  DataCell(Text('Curtsy Lunge')),
                  DataCell(Text('Weighted Curtsy lunge')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Knee Grab')),
                  DataCell(Text('V-up')),
                  DataCell(Text('Quick tempo V-up')),
                ]),
              ],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => munu1()),
                );
              },
              color:Colors.orangeAccent,

              child: Text(
                'MENU',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ])
      ),
    );
  }
}
class munu1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 640,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.deepOrange.shade300],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 0.9],
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[50],
                child: Center (child: Text(("MENU"))
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                color:Colors.orangeAccent,
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => _DataTableExample()),
                  );
                },
                color:Colors.orangeAccent,
                child: Text(
                  'Workout Program',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: "BMI")),
                  );
                },
                color:Colors.orangeAccent,
                child: Text(
                  'BMI',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
