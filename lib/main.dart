import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int likesCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.grey, size: 50),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.01,
            left: 10,
            right: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 120,
                      color: Colors.black,
                    ),
                    SizedBox(height: 100),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/POST1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    SizedBox(height: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 3),
                        Icon(
                          Icons.favorite_border,
                          size: 24,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('$likesCount',
                            style: TextStyle(
                              fontFamily: 'Times New Normal Regular',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    SizedBox(height: 0),
                    Text(
                      'Likes',
                      style: TextStyle(
                        fontFamily: 'Glamour Elephant',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Johann Factora',
                      style: TextStyle(
                        fontFamily: 'Times New Normal Regular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Computer Engineer',
                      style: TextStyle(
                        fontFamily: 'Times New Normal Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Hello',
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Text(
                            '999',
                            style: TextStyle(
                              fontFamily: 'Hello',
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontFamily: 'Hello',
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          child: Text(
                            'Posts',
                            style: TextStyle(
                              fontFamily: 'Glamour Elephant',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Text(
                            'Followers',
                            style: TextStyle(
                              fontFamily: 'Glamour Elephant',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                          child: Text(
                            'Following',
                            style: TextStyle(
                              fontFamily: 'Glamour Elephant',
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likesCount += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
