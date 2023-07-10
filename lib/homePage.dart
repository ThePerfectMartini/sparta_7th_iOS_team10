import 'package:flutter/material.dart';
import 'ksp.dart';
import 'bes.dart';
import 'lcm.dart';
import 'lsh.dart';
import 'lsn.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => lsn()));
            },
            child: Text("이상남", style: TextStyle(fontSize: 50)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => lcm()));
            },
            child: Text("이창민", style: TextStyle(fontSize: 50)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ksp()));
            },
            child: Text("공성표", style: TextStyle(fontSize: 50)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bes()));
            },
            child: Text("배은서", style: TextStyle(fontSize: 50)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => lsh()));
            },
            child: Text("이시형", style: TextStyle(fontSize: 50)),
          ),
        ],
      ),
    );
  }
}
