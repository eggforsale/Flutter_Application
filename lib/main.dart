import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          margin: const EdgeInsets.all(0.0),
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.grey, size: 50),
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
                    const Icon(
                      Icons.account_circle,
                      size: 120,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 100),
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
                  ],
                ),
                const SizedBox(width: 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Johann Factora',
                      style: TextStyle(
                        fontFamily: 'Times New Normal Regular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Computer Engineer',
                      style: TextStyle(
                        fontFamily: 'Times New Normal Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
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
                    const SizedBox(height: 10),
                    Row(
                      children: const [
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
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
