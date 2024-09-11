import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier{

  //list of food menu
  final List<Food> _menu = [

  //burgers
 Food(
     name: "Classic Cheeseburger",
     description: "A juicy beef patty, melted cheese, and toppings like lettuce and tomato, all inside a soft bun.",
     imagePath: "lib/images/burgers/cheese_burger.png",
     price: 250.00,
     category: FoodCategory.Burgers,
     availableAddons: [
       Addon(name: "Extra cheese", price: 20),
       Addon(name: "Bacon", price: 60),
       Addon(name: "Avocado", price: 120),
     ],
 ),

    Food(
      name: "Aloha Burger",
      description: "A juicy beef patty topped with a grilled pineapple slice, cheese, and sometimes teriyaki sauce, all served in a soft bun. It blends sweet and savory flavors for a tropical twist on a classic burger.",
      imagePath: "lib/images/burgers/aloha_burger.jpg",
      price: 175.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Bacon", price: 60),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "BBQ Burger",
      description: "A beef patty topped with smoky barbecue sauce, crispy onion rings, and melted cheese, all served in a toasted bun. It's a flavorful combination of savory, tangy, and crunchy elements.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 275.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Bacon", price: 60),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Blue moon Burger",
      description: "A gourmet twist on the classic burger, featuring a beef patty topped with rich blue cheese, caramelized onions, and sometimes bacon, all served in a toasted bun.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 330.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Bacon", price: 60),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Veggie Burger",
      description: "A plant-based patty made from ingredients like beans, grains, or vegetables, topped with fresh lettuce, tomato, and often avocado or cheese, served in a toasted bun.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 230.00,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),

  //salads

    Food(
      name: "Caesar Salad",
      description: "A crisp romaine lettuce tossed with creamy Caesar dressing, croutons, and Parmesan cheese. It’s a flavorful, classic salad with a tangy, savory kick.",
      imagePath: "lib/images/salads/salads_1.jpg",
      price: 130.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Greek Salad",
      description: "A fresh cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, dressed with olive oil and oregano. It’s a vibrant, Mediterranean dish with a balance of tangy and savory flavors.",
      imagePath: "lib/images/salads/salads_2.jpg",
      price: 210.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Cobb Salad",
      description: "A hearty mix of chopped greens, grilled chicken, bacon, avocado, eggs, blue cheese, and a tangy vinaigrette.",
      imagePath: "lib/images/salads/salads_3.jpg",
      price: 180.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Caprese Salad",
      description: "Fresh tomatoes, mozzarella cheese, and basil leaves, drizzled with olive oil and balsamic vinegar. It’s a simple, refreshing Italian classic.",
      imagePath: "lib/images/salads/salads_4.jpg",
      price: 230.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Waldorf Salad",
      description: "A blend of crisp apples, celery, grapes, and walnuts, dressed in a creamy mayonnaise or yogurt dressing. It’s a sweet and crunchy salad with a touch of elegance.",
      imagePath: "lib/images/salads/salads_5.jpg",
      price: 130.00,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Avocado", price: 120),
      ],
    ),


  //sides

    Food(
      name: "Fries",
      description: "Crispy, golden-brown strips of deep-fried potatoes, often served as a savory side dish.",
      imagePath: "lib/images/sides/sides_4.jpg",
      price: 99.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Cheese", price: 20),
      ],
    ),

    Food(
      name: "Hakka Noodles",
      description: "A popular Indo-Chinese dish made with stir-fried noodles, vegetables, and a blend of Chinese sauces and spices.",
      imagePath: "lib/images/sides/sides_2.jpg",
      price: 230.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Potato Chips",
      description: "Thin slices of potato that are deep-fried or baked until crispy and typically seasoned with salt or various flavorings.",
      imagePath: "lib/images/sides/sides_3.jpg",
      price: 100.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Melted Cheese", price: 30),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Peri-Peri Fries",
      description: "A crispy French fries seasoned with a spicy and tangy peri peri spice blend, often made from African bird's eye chili.",
      imagePath: "lib/images/sides/sides_4.jpg",
      price: 130.00,
      category: FoodCategory.Sides,
      availableAddons: [
        // Addon(name: "Extra cheese", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Chicken Nuggets",
      description: "A bite-sized pieces of chicken, typically breaded and fried or baked, known for their crispy coating and tender interior.",
      imagePath: "lib/images/sides/sides_5.jpg",
      price: 200.00,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Cheese Dip", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),



  //desserts


    Food(
      name: "Choco-Cream Cascade",
      description: "A luscious dessert featuring layers of rich cream and smooth chocolate syrup, cascading together for a heavenly treat.",
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 110.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra choco syrup", price: 40),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Coco Swirl Delight",
      description: "A soft, rolled sponge cake filled with creamy chocolate filling and coated with a layer of rich chocolate.",
      imagePath: "lib/images/desserts/dessert_2.jpg",
      price: 130.00,
      category: FoodCategory.Desserts,
      availableAddons: [
         Addon(name: "Extra choco", price: 30),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Strawberry Cloud Parfait",
      description: "A light and airy dessert layered with whipped cream, fresh strawberries, and soft sponge cake, creating a cloud-like indulgence.",
      imagePath: "lib/images/desserts/dessert_3.jpg",
      price: 130.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        // Addon(name: "Extra cheese", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Velvet Mocha Delight",
      description: "A sumptuous dessert combining velvety cream with a rich mocha sauce, offering a luxurious and indulgent experience.",
      imagePath: "lib/images/desserts/dessert_4.jpg",
      price: 230.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Extra mocha sauce", price: 50),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Triple Chocolate Bliss Cake",
      description: "An indulgent dessert layered with dark, milk, and white chocolate, creating a rich and harmonious chocolate experience.",
      imagePath: "lib/images/desserts/dessert_5.jpg",
      price: 170.00,
      category: FoodCategory.Desserts,
      availableAddons: [
        // Addon(name: "Extra cheese", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

  //drinks

    Food(
      name: "Crimson Cherry Fizz",
      description: "A vibrant, effervescent drink with a zesty cherry flavor and a refreshing fizzy kick.",
      imagePath: "lib/images/drinks/drinks_1.jpg",
      price: 120.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 20),
      ],
    ),

    Food(
      name: "Sparkling Crimson Elixir",
      description: "A vibrant, effervescent wine with rich red berry flavors and a lively, refreshing fizz.",
      imagePath: "lib/images/drinks/drinks_2.jpg",
      price: 170.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 20),
      ],
    ),

    Food(
      name: "Ruby Red Refresher",
      description: "A crisp, revitalizing drink with a burst of cherry flavor and a refreshing, tangy finish.",
      imagePath: "lib/images/drinks/drinks_3.jpg",
      price: 140.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 20),
      ],
    ),

    Food(
      name: "Coke Can",
      description: "A carbonated soft drink known for its refreshing taste and distinctive, sweet flavor.",
      imagePath: "lib/images/drinks/drinks_4.jpg",
      price: 60.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        // Addon(name: "Extra cheese", price: 20),
        // Addon(name: "Avocado", price: 120),
      ],
    ),

    Food(
      name: "Lassi",
      description: "A traditional Indian yogurt-based drink, often flavored with spices or fruit, that offers a creamy and refreshing taste.",
      imagePath: "lib/images/drinks/drinks_5.jpg",
      price: 130.00,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Extra ice", price: 20),
      ],
    ),

  ];

  /*
  getters
   */

List<Food> get menu => _menu;
List<CartItem> get cart => _cart;

/*
  operations
   */
//user cart
final List<CartItem> _cart = [];

//add to cart
void addToCart (Food food, List<Addon> selectedAddons) {
  //see if there is a cart item already with the same food and selected addons
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    //check if the food items are the same
      bool isSameFood = item.food == food;
    //check if the list of the selected addons are the same
    bool isSameAddons =
        ListEquality().equals(
            item.selectedAddons, selectedAddons);
               return isSameFood && isSameAddons;
  });

  //if item already exists, increase it's quantity
  if(cartItem != null) {
    cartItem.quantity++;
  }

  //otherwise add anew cart item
  else {
    _cart.add(
      CartItem(
          food: food,
          selectedAddons: selectedAddons,
      ),
    );
  }
  notifyListeners();
}

//remove from cart
 void removeFromCart(CartItem cartItem) {
  int cartIndex = _cart.indexOf(cartItem);

  if (cartIndex != -1) {
    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    }else {
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
 }

//get total price of the cart
double getTotalPrice() {
  double total = 0.0;

  for (CartItem cartItem in _cart){
    double itemTotal = cartItem.food.price;

    for (Addon addon in cartItem.selectedAddons) {
      itemTotal += addon.price;
    }

    total += itemTotal * cartItem.quantity;
  }

  return total;
}

//get total number of items in cart
int getTotalItemCount () {
  int totalItemCount = 0;

  for (CartItem cartItem in _cart) {
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}

//clear cart
void clearCart() {
  _cart.clear();
  notifyListeners();
}


/*
  helpers
   */
// generate a receipt
  String displayCartRecipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate =
    DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

//format double value into money
String _formatPrice(double price) {
  return"\₹${price.toStringAsFixed(2)}";
}

//format list of addons into string summary
String _formatAddons(List<Addon> addons) {
  return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
}
}