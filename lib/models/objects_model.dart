class Object {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ObjectModel> _objects;
  List<ObjectModel> get objects => _objects;

  Object(
      {required totalSize,
      required typeId,
      required offset,
      required objects}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._objects = objects;
  }

  Object.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['objects'] != null) {
      _objects = <ObjectModel>[];
      json['objects'].forEach((v) {
        _objects!.add(ObjectModel.fromJson(v));
      });
    }
  }
}

class ObjectModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ObjectModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  ObjectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
  }
}
