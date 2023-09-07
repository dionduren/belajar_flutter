import 'package:flutter/material.dart';

main() {
  runApp(const MyAppTest());
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    // return Text("Hallo");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfaffff54),
        // backgroundColor: Color.fromARGB(255, 170, 182, 157),
        body: const Center(
          child: Text(
            'Halo juga akjgdlakjw kabdklahbdlakh dljha jlhawb djhkal dlkahgd jhla gdyasg djkahg djha gdjaw gwjhd awjh ajshdg jas kuay fguyaw fduay ajydawf dajlsf dauow fajhs duayow doay dauyow dojya dywa dajy d awdjha sdkjas dha',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              // letterSpacing: 5,
              fontFamily: 'Inter',
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.purple,
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('My Apps'),
        ),
      ),
    );
  }
}
