class ExtendedIngredientsDetails {
  late int id;
  late String aisle;
  late String image;
  late String consistency;
  late String name;
  late String original;
  late String originalName;
  late int amount;

  ExtendedIngredientsDetails({
    required this.id,
    required this.aisle,
    required this.image,
    required this.consistency,
    required this.name,
    required this.original,
    required this.originalName,
    required this.amount,
  });

  ExtendedIngredientsDetails.fromMap(Map<String, dynamic> map){
    this.id = map["id"];
    this.aisle = map["aisle"];
    this.image = map["image"];
    this.consistency = map["consistency"];
    this.name = map["name"];
    this.original = map["original"];
    this.originalName = map["originalName"];
    this.amount = map["amount"];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {

      "id": this.id,
      "aisle": this.aisle,
      "image": this.image,
      "consistency": this.consistency,
      "name": this.name,
      "original": this.original,
      "originalName": this.originalName,
      "amount": this.amount,
    };
    return map ;
  }
}