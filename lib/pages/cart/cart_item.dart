import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Container(
        child: Row(
          children: [
            Container(
                height: 96,
                width: 96,
                child: Image.asset('assets/images/image (1).png')),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "PlayStation 5",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "6 000 ₸",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "3 суток",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Удалить",
                        style: TextStyle(color: Color(0xFF3175ED)),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
