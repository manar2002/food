import 'package:food/network/api1/results_details.dart';

class FoodApiResponse {
  late List<ResultsDetails> results;

  late int offset;

  late int number;

  late int totalResults;

  FoodApiResponse(
      {required this.results,
      required this.offset,
      required this.number,
      required this.totalResults});

  FoodApiResponse.fromMap(Map<String, dynamic> map) {
    this.results = [];

    (map['results'] as List<Map< String , dynamic >>).forEach((element) {
      this.results.add(ResultsDetails.fromMap(element));
    });

    this.results = map["results"];
    this.offset = map["offset"];
    this.number = map["number"];
    this.totalResults = map["totalResults"];
  }

  Map<String, dynamic> toMap() {
    List<Map> tmpList = [];
    this.results.forEach((element) {
      tmpList.add(element.toMap());
    });

    Map<String, dynamic> map = {
      "results": tmpList,
      "offset": this.offset,
      "number": this.number,
      "totalResults": this.totalResults,
    };
    return map;
  }
}
