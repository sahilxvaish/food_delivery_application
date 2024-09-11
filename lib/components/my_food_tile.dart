import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {

  final Food food;
  final void Function()? ontap;

  const FoodTile({
    super.key,
    required this.food,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                //text food details
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name),
                        Text('\₹' +food.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                            food.description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    )
                ),

                const SizedBox(width: 15),

                //food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                    child: Image.asset(food.imagePath, height: 100,)),
              ],
            ),
          ),
        ),

        //divider line
         Divider(
             color: Theme.of(context).colorScheme.tertiary,
           endIndent: 25,
           indent: 25,
         ),

      ],
    );
  }
}
