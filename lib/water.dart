import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hora de Beber Água',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WaterPage(),
    );
  }
}

class WaterPage extends StatefulWidget {
  @override
  _WaterPageState createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  int totalWaterConsumed = 0;

  void addWater(int amount) {
    setState(() {
      totalWaterConsumed += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hora de Beber Água'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Total Consumido: $totalWaterConsumed ml',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => addWater(100),
                  child: Text('100 ml'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => addWater(200),
                  child: Text('200 ml'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => addWater(300),
                  child: Text('300 ml'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  totalWaterConsumed = 0;
                });
              },
              child: Text('Zerar Consumo'),
            ),
          ],
        ),
      ),
    );
  }
}
