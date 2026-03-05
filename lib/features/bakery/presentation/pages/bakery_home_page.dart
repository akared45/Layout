import 'package:flutter/material.dart';
import '../../../../config/app_colors.dart';
import '../../data/mock_cake_data.dart';
import '../widgets/cake_list_item.dart';

class BakeryHomePage extends StatelessWidget {
  const BakeryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bakery.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Banner quảng cáo
              _buildBanner(),
              const SizedBox(height: 25),

              const Text(
                "Choose for you...",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              // 2. Grid nhỏ 3 cột (Chỉ hiện ảnh và tên)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: 6, // Hiển thị 6 cái bánh đầu tiên
                itemBuilder: (context, index) => _buildSmallGridItem(index),
              ),

              const SizedBox(height: 25),

              // 3. Danh sách dài (List View - Nhiều chữ)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: MockCakeData.cakes.length,
                itemBuilder: (context, index) =>
                    CakeListItem(cake: MockCakeData.cakes[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
        image: const DecorationImage(
          image: NetworkImage(
            'https://via.placeholder.com/300',
          ),
          fit: BoxFit.cover,
          opacity: 0.3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Too busy to make a cake?\nDesign your own in a few minutes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.bakery.accent,
            ),
            child: const Text(
              "Order Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallGridItem(int index) {
    return Column(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text("🍰", style: TextStyle(fontSize: 40)),
          ),
        ),
        const SizedBox(height: 5),
        const Text("Cake Name", style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
