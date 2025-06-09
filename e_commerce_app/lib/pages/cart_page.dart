import 'package:e_commerce_app/components/cart_item.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // heading
                const Text(
                  "My cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserList().length,
                    itemBuilder: (context, index) {
                      // get invidual show
                      Shoe invidualShoe = value.getUserList()[index];

                      // return the cart item
                      return CartItem(shoe: invidualShoe);
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
