import 'package:flutter/material.dart';
import '../../domain/entities/food_entity.dart';
import '../../../../config/app_colors.dart';
import '../../data/mock_food_data.dart';
import '../widgets/food_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = "Popular";

  @override
  Widget build(BuildContext context) {
    final List<FoodEntity> filteredFoods = MockFoodData.foods
        .where((food) => food.category == selectedCategory)
        .toList();
    return Scaffold(
      backgroundColor: AppColors.body.background,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            _buildSearchBar(),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
              child: Text("Category", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  _categoryTag("Popular"),
                  _categoryTag("Indian"),
                  _categoryTag("Chinese"),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: MockFoodData.foods.length,
                itemBuilder: (context, index) => FoodCard(food: filteredFoods[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryTag(String title) {
    bool isSelected = selectedCategory == title;
    return GestureDetector(
      onTap: () => setState(() => selectedCategory = title),
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.black),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? AppColors.white : AppColors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Mark Adam",
                style: TextStyle(color: AppColors.header.subText),
              ),
              Text(
                "Enjoy Tasty Food",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
          const CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Find Your Meal",
          prefixIcon: Icon(Icons.search, color: AppColors.header.icon),
        ),
      ),
    );
  }
}
