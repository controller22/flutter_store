import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: StorePage(),
        ));
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // 자식이 하나만 있을 수 있으면 child
          children: [
            // 자식이 여러개 있을 수 있으면 children
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //spacer 사용하지 말고 웬만하면 이거 사용
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Iids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover,)),
            SizedBox(height: 1,),
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover,)),

          ],
        ),
      ),
    );
  }
}