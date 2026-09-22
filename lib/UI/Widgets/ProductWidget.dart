import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(
              "assets/image/IMG_1588.PNG",
              fit: BoxFit.cover,
            ),
          ),
          Card(
            child: Column(
              children: [
                const Text("Tên sản phẩm: Ô tô bay"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Giá cũ: 30\$", style: TextStyle(color: Colors.blue)),
                    SizedBox(width: 8),
                    Text("Giá khuyến mãi: 20\$", style: TextStyle(color: Colors.red)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
