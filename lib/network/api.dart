import 'dart:convert';

import 'package:food/network/api1/food_api_response.dart';
import 'package:food/network/api2/recipe_card.dart';
import 'package:http/http.dart' as http;

class FoodApi {
  Future<FoodApiResponse> getApiData() async{
    final http.Response request = await http.get(Uri.parse("https://api.spoonacular.com/recipes/complexSearch?apiKey=e9986339e6f342508c87cf76d2c45c27")) ;
    if(request.statusCode <= 299 && request.statusCode >= 200){
      final Map<String , dynamic> jsonBody = jsonDecode(request.body) ;
      FoodApiResponse foodApiResponse = FoodApiResponse.fromMap(jsonBody) ;
      return foodApiResponse ;
    }else{
      throw("Response Failure : ${request.body}") ;
    }
  }
}

class DetailsApi {
  Future<RecipeCard> getApiData() async{
    final http.Response request2 = await http.get(Uri.parse("https://api.spoonacular.com/recipes/complexSearch?apiKey=e9986339e6f342508c87cf76d2c45c27")) ;
    if(request2.statusCode <= 299 && request2.statusCode >= 200){
      final Map<String , dynamic> jsonBody = jsonDecode(request2.body) ;
      RecipeCard recipeCardResponse = RecipeCard.fromMap(jsonBody) ;
      return recipeCardResponse ;
    }else{
      throw("Response Failure : ${request2.body}") ;
    }
  }
}