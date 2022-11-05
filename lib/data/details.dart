class Food {
  late int? id ;
  late String title ;
  late String image ;
  late bool isChecked ;

  Food({required this.id, required this.title, required this.image, required this.isChecked});

  Food.fromMap(Map <String , dynamic> map){
    if (map[id] != null) id = map[id];
    title = map['title'] ;
    image = map['image'] ;
    isChecked = map['isChecked'] == 0 ? false : true ;
  }
  Map<String,dynamic> toMap(){
    Map<String,dynamic> map = {} ;
    if (id != null) map[id] = id;
    map[title] = title ;
    map[image] = image ;
    map[isChecked] = isChecked ? 1:0 ;
    return map ;
  }
}