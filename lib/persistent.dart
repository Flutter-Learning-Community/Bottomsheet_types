import 'package:flutter/material.dart';

class persistent extends StatelessWidget {
  const persistent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBottomSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persistent Bottom Sheet'),
      ),
      body: Container(),
      bottomSheet: _showBottomSheet
          ? BottomSheet(
              elevation: 10,
              backgroundColor: Colors.amber,
              onClosing: () {},
              builder: (BuildContext ctx) => Container(
                    width: double.infinity,
                    height: 250,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: const Text(
                        'Close this bottom sheet',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          _showBottomSheet = false;
                        });
                      },
                    ),
                  ))
          : null,
    );
  }
}
