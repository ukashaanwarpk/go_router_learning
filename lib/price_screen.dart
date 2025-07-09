import 'package:flutter/material.dart';

class PriceScreen extends StatelessWidget {
  final double price;
  final String itemName;
  const PriceScreen({super.key, required this.price, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PriceScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$itemName:',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              price.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
