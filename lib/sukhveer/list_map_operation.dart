void main() {
  List<int> intList = <int>[1, 6, 3];
  intList.addAll([1, 2, 3]);
  intList.remove(6);
  Map<String, dynamic> json = <String, dynamic>{
    "name": "sukhveer",
    "roll_no": "110",
    "class": "12",
    "me": {
      "name": "sukhveer",
      "roll_no": "110",
      "class": "12",
      "me": "12",
    },
  };
  // intList.forEach((value) {
  //   print("$value");
  // });
  json.remove("name");
  json.forEach((key, value) {
    print("$key => $value");
  });
}
