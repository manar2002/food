class ResultsDetails {
  late int id ;
  late String title ;
  late String image ;
  late String imageType ;

  ResultsDetails({
    required this.id ,
    required this.title ,
    required this.image ,
    required this.imageType ,
});
  ResultsDetails.fromMap(Map< String ,dynamic > map){
    this.id = map["id"] ;
    this.title = map["title"] ;
    this.image = map["image"] ;
    this.imageType = map["imageType"] ;
  }
  Map< String ,dynamic > toMap(){
    Map< String , dynamic > map = {
    "id" : this.id ,
    "title" : this.title ,
    "image" : this.image ,
    "imageType" : this.imageType ,
    } ;
    return map ;
  }
}