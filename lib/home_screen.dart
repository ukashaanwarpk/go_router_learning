import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_learning/model/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                final user = UserModel(
                  name: 'Ukasha Anwar',
                  role: 'Flutter Developer',
                  image: 'https://images.unsplash.com/photo-1750785328656-eb4c9942e58f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                );

                context.pushNamed(
                  '/profile',
                  extra: {
                    'user': user,
                    'title': 'My Cool Profile',
                  },
                );
              },
              child: Text('ProfileScreen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                context.pushNamed(
                  '/price',
                  pathParameters: {
                    'amount': '50.99',
                    'itemName': 'Bag',
                  },
                );
              },
              child: Text('PriceScreen'),
            ),
          ),
        ],
      ),
    );
  }
}
