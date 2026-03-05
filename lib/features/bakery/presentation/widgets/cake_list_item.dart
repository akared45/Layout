import 'package:flutter/material.dart';
import '../../../../config/app_colors.dart';
import '../../domain/entities/cake_entity.dart';

class CakeListItem extends StatelessWidget {
  final CakeEntity cake;
  const CakeListItem({super.key, required this.cake});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.bakery.card,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.bakery.background,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(cake.image, style: const TextStyle(fontSize: 40)),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cake.name,
                  style: TextStyle(
                    color: AppColors.bakery.textDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  cake.description,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_downward, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
