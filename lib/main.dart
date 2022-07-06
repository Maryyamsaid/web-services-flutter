import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_api/pages/coin_desk.dart';
import 'package:web_api/provider/CoinDeskProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CoinDeskProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const CoinDeskPage()),
    );
  }
}
