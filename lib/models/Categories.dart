class Categories {
  int entityId;
  String name;

  Categories({this.entityId, this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    entityId = json['entity_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entity_id'] = this.entityId;
    data['name'] = this.name;
    return data;
  }
}