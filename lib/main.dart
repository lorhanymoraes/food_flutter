import 'package:flutter/material.dart';
import 'package:food_flutter/screens/meal_detail_screen.dart';
import 'package:food_flutter/utils/routes.dart';
import '../screens/categories_screen.dart';
import '../screens/categories_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Vamos Cozinhar?'),
//       ),
//       body: const Center(
//         child: Text('Navegar é preciso!!'),
//       ),
//     );
//   }
// }
