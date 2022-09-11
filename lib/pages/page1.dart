import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text("Page 1"),
    // );
    return Scaffold(
      appBar: AppBar(
        title:const Text('App Nav Routing'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('profile'), 
            child:const Text('To Profile Page'))
          ],
        ),
      ),
    );
  }
}