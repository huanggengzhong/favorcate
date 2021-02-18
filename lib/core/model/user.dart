/// 这个是用JsonToDart生成的模型数据
/// name : "gengzhong"
/// age : 18

class User {
  String _name;
  int _age;

  String get name => _name;
  int get age => _age;

  User({
      String name, 
      int age}){
    _name = name;
    _age = age;
}

  User.fromJson(dynamic json) {
    _name = json["name"];
    _age = json["age"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["age"] = _age;
    return map;
  }

}