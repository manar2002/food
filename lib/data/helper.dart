import 'package:food_app/data/details.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const String id = 'id';
const String title = 'title';
const String image = 'image';
const String isChecked = 'isChecked';
const String recipeCard = 'recipeCard';

class RecipeHelper {

  late Database db ;

Future open() async {
  db = await openDatabase(join(await getDatabasesPath(), 'recipes.db'),
      version: 1, onCreate: (Database db, int version) async {
        await db.execute('''
create table $recipeCard ( 
  $id integer primary key autoincrement, 
  $title text not null,
  $image text not null,
  $isChecked integer not null
  )
''');
      });
  Future<Food> insertFood(Food recipe) async {
    recipe.id = await db.insert(recipeCard, recipe.toMap());
    return recipe;
  }
  Future<int> deleteFood(int id) async {
    return await db.delete(recipeCard, where: '$id = ?', whereArgs: [id]);
  }

  Future<int> updateFood(Food recipe) async {
    return await db.update(recipeCard, recipe.toMap(),
        where: '$id = ?', whereArgs: [recipe.id]);
  }
  Future<List<Food>> getAllFood() async {
    List<Map<String, dynamic>> recipeMaps = await db.query(recipeCard);
    if (recipeMaps.isEmpty) {
      return [];
    } else {
      List<Food> recipes = [];
      recipeMaps.forEach((element) {
        recipes.add(Food.fromMap(element));
      });
      return recipes;
    }
  }
  Future close() async => db.close();
}
}
