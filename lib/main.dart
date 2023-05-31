import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.sports_basketball),
              ),
              Text(
                'Basketball Pointer',
                style: TextStyle(fontFamily: 'JosefinSans'),
              ),
            ],
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                            fontSize: 120, fontFamily: 'JosefinSans'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 40,
                    endIndent: 40,
                    thickness: 3,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                          fontSize: 120,
                          fontFamily: 'JosefinSans',
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
