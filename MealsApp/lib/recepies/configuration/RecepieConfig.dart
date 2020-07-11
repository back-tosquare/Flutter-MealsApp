import '../../models/Meals.dart';

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
}
