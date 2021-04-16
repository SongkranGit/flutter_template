import 'package:flutter_template/app/data/models/breed.dart';
import 'package:flutter_template/app/data/network/dio_client.dart';

class BreedProvider {
  Future<List<Breed>> getBreeds() async {
    var data = await DioClient().get('/v1/breeds?limit=10&page=0');
    List<Breed> breeds = ((data as List).map((postJson) => Breed.fromJson(postJson)).toList());
    return breeds;
  }
}
