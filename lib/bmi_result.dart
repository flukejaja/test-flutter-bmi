import 'package:flutter/material.dart';
import 'main.dart';



class BmiResult extends StatelessWidget {
  BmiResult({Key? key, required this.result}) : super(key: key);
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI ที่ได้"),
      ),
      body: Center(
        child: Container(
          height: 640,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.amberAccent, Colors.yellowAccent],
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
                height: 500,
                child: Center(child:Text(
                  this.result,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                )),

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
              child: const Text('WORKOUT'),
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
          ])
      ),
    );
  }
}

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile 01',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: const Text('Profile 01'),
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
          ],
        ),
      ),
      ),
    );
  }
}


