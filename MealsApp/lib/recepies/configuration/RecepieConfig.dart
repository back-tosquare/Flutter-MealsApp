import '../../models/Meals.dart';
import '../../dummyData.dart';

class RecepieConfig {
  static double itemBorderRadius = 15;

  static String getComplexity(item) {
    return (item.complexity == Complexity.Simple)
        ? "Simple"
        : (item.complexity == Complexity.Hard)
            ? "Hard"
            : (item.complexity == Complexity.Challenging)
                ? "Challenging"
                : "Unknown";
  }

  static String getAffordability(item) {
    return (item.affordability == Affordability.Affordable)
        ? "Affordable"
        : (item.affordability == Affordability.Pricey)
            ? "Pricey"
            : (item.affordability == Affordability.Luxurious)
                ? "Luxurious"
                : "Unknown";
  }

  static List<Meal> getMealsList(bool favStatus, String categoryId) {
    List<Meal> myMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryId))
        .toList();

    List<Meal> filteredMeals = myMeals.where((element) {
      return (favStatus) ? (element.isFavourite) : true;
    }).toList();

    return filteredMeals;
  }
}
