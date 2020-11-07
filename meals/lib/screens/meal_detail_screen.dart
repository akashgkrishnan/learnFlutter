import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeals = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeals.title}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
        child: Icon(Icons.delete),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeals.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildTitleText(context, 'ingredients'),
          IngredientCard(selectedMeals: selectedMeals),
          buildTitleText(context, 'steps'),
          StepsCard(steps: selectedMeals.steps)
        ],
      ),
    );
  }

  Container buildTitleText(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    Key key,
    @required this.selectedMeals,
  }) : super(key: key);

  final Meal selectedMeals;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // margin: EdgeInsets.all(10.0),
      // padding: EdgeInsets.all(10.9),
      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(10.0),
      //     border: Border.all(
      //       color: Colors.grey,
      //     )),
      // height: 320,
      // width: 300,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: selectedMeals.ingredients.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    selectedMeals.ingredients[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class StepsCard extends StatelessWidget {
  StepsCard({
    Key key,
    @required this.steps,
  }) : super(key: key);

  var steps;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // margin: EdgeInsets.all(10.0),
      // padding: EdgeInsets.all(10.9),
      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(10.0),
      //     border: Border.all(
      //       color: Colors.grey,
      //     )),
      // height: 320,
      // width: 300,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: steps.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      steps[index].toString(),
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Divider(),
                ],
              );
            }),
      ),
    );
  }
}
