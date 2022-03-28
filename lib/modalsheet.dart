import 'package:flutter/material.dart';

class sheet extends StatelessWidget {
  const sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.amber,
        context: ctx,
        builder: (ctx) => Container(
              width: 300,
              height: 250,
              color: Colors.white54,
              alignment: Alignment.center,
              child: const Text('bottom sheet'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Sheet '),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Show The BottomSheet'),
            onPressed: () => _show(context),
          ),
        ),
      ),
    );
  }
}
