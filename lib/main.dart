import 'package:flutter/material.dart';
//main dart is main file
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeApp(),
      //untuk menghilangkan icon debug di dalam aplikasi
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeApp extends StatefulWidget {
  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home),
          centerTitle: true,
          actions: [
            Icon(
              Icons.settings,
              color: Colors.red,
            ),
            Icon(Icons.search),
          ],
          title: Center(
              child: Text("Fluter Icon+",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber[50],
                      fontWeight: FontWeight.bold)))),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "gambar/ojol.png",
                // network(
                //   "https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png",
                height: 100,
                width: 100,
                // color: Colors.black,
              ),
            ),
            Text("Flutter Icon+",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber[50],
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "email",
                      hintText: "enter Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {},
                    child: Text("Login"),
                  )),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
