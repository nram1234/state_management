class User_DataType{
  String name;
  int age;
  String details;
  String imagURL;
  String kind;
  String uid;

  User_DataType({this.name, this.age, this.details, this.imagURL,this.kind,this.uid});


  Map<String, dynamic> tojson() {
    Map<String, dynamic> mydata = {};
    mydata['name'] = name;
    mydata['age'] = age;
    mydata['details'] = details;
    mydata['imagURL'] = imagURL  ;
    mydata['kind'] = kind;
    mydata['uid'] = uid;
    return mydata;
  }

  User_DataType.fromjson(data) {
    name=data['name'];
    age=data['age'];
    details=data['details'];
    imagURL=data['imagURL'];
    kind=data['kind'];
    uid=data['uid'];
  }
}