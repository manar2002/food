import 'extended_ingredients_details.dart';

class RecipeCard {
  late bool veryHealthy ;
  late bool cheap ;
  late bool veryPopular ;
  late bool sustainable ;
  late int weightWatcherSmartPoints ;
  late int preparationMinutes ;
  late int cookingMinutes ;
  late int aggregateLikes ;
  late int healthScore ;
  late String creditsText ;
  late int pricePerServing ;
  late ExtendedIngredientsDetails extendedIngredients ;
  late int id ;
  late String title ;
  late int readyInMinutes ;
  late int servings ;
  late String sourceUrl ;
  late String image ;
  late String imageType ;
  late String summary ;
  late List dishTypes ;
  late String spoonacularSourceUrl ;

  RecipeCard({
    required this.veryHealthy ,
    required this.cheap ,
    required this.veryPopular ,
    required this.sustainable ,
    required this.weightWatcherSmartPoints ,
    required this.preparationMinutes ,
    required this.cookingMinutes ,
    required this.aggregateLikes ,
    required this.healthScore ,
    required this.creditsText ,
    required this.pricePerServing ,
    required this.extendedIngredients ,
    required this.id ,
    required this.title ,
    required this.readyInMinutes ,
    required this.servings ,
    required this.sourceUrl ,
    required this.image ,
    required this.imageType ,
    required this.summary ,
    required this.dishTypes ,
    required this.spoonacularSourceUrl ,
});
  RecipeCard.fromMap(Map<String, dynamic> map) {
    this.extendedIngredients = [];

    (map['extendedIngredients'] as List<Map< String , dynamic >>).forEach((element) {
      this.extendedIngredients.add(ExtendedIngredientsDetails.fromMap(element));
    });
    this.veryHealthy = map["veryHealthy"];
    this.cheap = map["cheap"];
    this.veryPopular = map["veryPopular"];
    this.sustainable = map["sustainable"];
    this.weightWatcherSmartPoints = map["weightWatcherSmartPoints"];
    this.preparationMinutes = map["preparationMinutes"];
    this.cookingMinutes = map["cookingMinutes"];
    this.aggregateLikes = map["aggregateLikes"];
    this.healthScore = map["healthScore"];
    this.creditsText = map["creditsText"];
    this.pricePerServing = map["pricePerServing"];
    this.extendedIngredients = map["extendedIngredients"];
    this.id = map["id"];
    this.title = map["title"];
    this.readyInMinutes = map["readyInMinutes"];
    this.servings = map["servings"];
    this.sourceUrl = map["sourceUrl"];
    this.image = map["image"];
    this.imageType = map["imageType"];
    this.summary = map["summary"];
    this.dishTypes = map["dishTypes"];
    this.spoonacularSourceUrl = map["spoonacularSourceUrl"];
  }

  Map<String, dynamic> toMap() {
    List<Map> tmpList = [];
    this.extendedIngredients.forEach((element) {
      tmpList.add(element.toMap());
    });

    Map<String, dynamic> map = {
      "extendedIngredients": tmpList,
      "veryHealthy" : this.veryHealthy ,
      "cheap" : this.cheap ,
      "veryPopular" : this.veryPopular ,
      "sustainable" : this.sustainable ,
      "weightWatcherSmartPoints" : this.weightWatcherSmartPoints ,
      "preparationMinutes" : this.preparationMinutes ,
      "cookingMinutes" : this.cookingMinutes ,
      "aggregateLikes" : this.aggregateLikes ,
    "healthScore" : this.healthScore ,
    "creditsText" : this.creditsText ,
    "pricePerServing" : this.pricePerServing ,
    "extendedIngredients" : this.extendedIngredients ,
    "id" : this.id ,
    "title" : this.title ,
    "readyInMinutes" : this.readyInMinutes ,
    "servings" : this.servings ,
    "sourceUrl" : this.sourceUrl ,
    "image" : this.image ,
    "imageType" : this.imageType ,
    "summary" : this.summary ,
    "dishTypes" : this.dishTypes ,
    "spoonacularSourceUrl" : this.spoonacularSourceUrl ,
    };
    return map;
  }
}