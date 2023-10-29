import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Ninja ID Card',
        style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 75,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(''),
                radius: 60,
              ),
            ),
            Divider(
              height: 80,
              color: Colors.grey[800],
            ),
            Text('Name',
            style: TextStyle(color: Colors.white),
            ),
            // SizedBox(height: 10.0),
            Text(
              'Chun-Li',
            style: TextStyle(color: Colors.yellow[400],fontSize: 30)
            ),
            SizedBox(height: 30.0),
            Text('CURRENT NINJA LEVEL',
            style: TextStyle(color: Colors.white),
            ),
            // SizedBox( height: 10.0),
              Text('$ninjaLevel',
              style: TextStyle(color: Colors.yellow,fontSize: 25),
              ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.email,
                color: Colors.white,
                  size: 30,
                ),
                Text('chun.li@thenetninja.co.uk',
                style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1.0),
                ),
              ],
            ),
            // ElevatedButton.icon(
            //     onPressed: ()
            //     {},
            //     icon: Icon(Icons.email),
            //     label: Text('chun.li@thenetninja.co.uk'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}
