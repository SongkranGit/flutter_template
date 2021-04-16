// import 'package:json_annotation/json_annotation.dart';
//
// part 'breed.g.dart';
//
// @JsonSerializable()
// class Breed {
//   Weight weight;
//   Weight height;
//   int id;
//   String name;
//   String bredFor;
//   String breedGroup;
//   String lifeSpan;
//   String temperament;
//   String origin;
//   String referenceImageId;
//   Image image;
//
//   Breed(this.weight, this.height, this.id, this.name, this.bredFor, this.breedGroup, this.lifeSpan, this.temperament, this.origin,
//       this.referenceImageId, this.image);
//
//   factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
//   Map<String, dynamic> toJson() => _$BreedToJson(this);
// }
//
// @JsonSerializable()
// class Weight {
//   String imperial;
//   String metric;
//
//   Weight({this.imperial, this.metric});
//
//   factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
//   Map<String, dynamic> toJson() => _$WeightToJson(this);
// }
//
// @JsonSerializable()
// class Image {
//   String id;
//   int width;
//   int height;
//   String url;
//
//   Image({this.id, this.width, this.height, this.url});
//
//   factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
//   Map<String, dynamic> toJson() => _$ImageToJson(this);
// }

class Breed {
  Weight weight;
  Weight height;
  int id;
  String name;
  String bredFor;
  String breedGroup;
  String lifeSpan;
  String temperament;
  String origin;
  String referenceImageId;
  Image image;

  Breed(
      {this.weight,
      this.height,
      this.id,
      this.name,
      this.bredFor,
      this.breedGroup,
      this.lifeSpan,
      this.temperament,
      this.origin,
      this.referenceImageId,
      this.image});

  Breed.fromJson(Map<String, dynamic> json) {
    weight = json['weight'] != null ? new Weight.fromJson(json['weight']) : null;
    height = json['height'] != null ? new Weight.fromJson(json['height']) : null;
    id = json['id'];
    name = json['name'];
    bredFor = json['bred_for'];
    breedGroup = json['breed_group'];
    lifeSpan = json['life_span'];
    temperament = json['temperament'];
    origin = json['origin'];
    referenceImageId = json['reference_image_id'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weight != null) {
      data['weight'] = this.weight.toJson();
    }
    if (this.height != null) {
      data['height'] = this.height.toJson();
    }
    data['id'] = this.id;
    data['name'] = this.name;
    data['bred_for'] = this.bredFor;
    data['breed_group'] = this.breedGroup;
    data['life_span'] = this.lifeSpan;
    data['temperament'] = this.temperament;
    data['origin'] = this.origin;
    data['reference_image_id'] = this.referenceImageId;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    return data;
  }
}

class Weight {
  String imperial;
  String metric;

  Weight({this.imperial, this.metric});

  Weight.fromJson(Map<String, dynamic> json) {
    imperial = json['imperial'];
    metric = json['metric'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imperial'] = this.imperial;
    data['metric'] = this.metric;
    return data;
  }
}

class Image {
  String id;
  int width;
  int height;
  String url;

  Image({this.id, this.width, this.height, this.url});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    width = json['width'];
    height = json['height'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['width'] = this.width;
    data['height'] = this.height;
    data['url'] = this.url;
    return data;
  }
}
