import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primer app'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.orange,
        child: (Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "San Francisco",
              style: TextStyle(fontSize: 41),
            ),
            Text("19 Nublado", style: TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.cloud,
                  size: 48,
                  color: Colors.white,
                ),
                Text(
                  "19C",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Actualizar datos"),
                  color: Colors.yellow,
                  onPressed: () {
                    ScaffoldMessenger.of(context)..hideCurrentSnackBar() ..showSnackBar(SnackBar(content: Text("Hola")));
                    
                  },
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
