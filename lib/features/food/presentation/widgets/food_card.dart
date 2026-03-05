import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/app_colors.dart';
import '../../domain/entities/food_entity.dart';

import '../../../../config/app_routes.dart';

class FoodCard extends StatelessWidget {
  final FoodEntity food;
  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: ()=> context.push(AppRoutes.detail,extra:food),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.body.card,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.body.border),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("⭐${food.rating}", style: const TextStyle(fontWeight: FontWeight.bold)),
              Expanded(
                child: Center(
                  child: Image.asset(
                    food.image,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.broken_image, size: 50, color: Colors.grey);
                    },
                  ),
                ),
              ),
              Text(food.name, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(food.price, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Icon(Icons.add_circle, color: Colors.black),
                ],
              )
            ],
          )
      ),
    );
  }
}
