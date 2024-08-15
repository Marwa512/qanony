import 'package:injectable/injectable.dart';
import 'package:qanony/core/injection/service_locator.dart';
import 'package:qanony/features/search/data/data_resourses/remote/client.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:qanony/features/search/domain/entities/search_entity.dart';
import 'package:qanony/features/search/domain/repositories/search_repo.dart';

@Injectable()
class SearchRepoImp implements SearchRepo {
  SearchModel? model;
  List<SearchEntity>? entity;
  var client = getIt<RestClient>();
  @override
  Future search({String? name, int? page}) async {
    try {
      final response = await client.search(searchName: name, page: page);
      print("response = ${response.data}");
      model = response;
      for (int i = 0; i <= model!.data!.length; i++) {
        entity?[i] = SearchEntity(
            model!.data![i].city?.name,
            model!.data![i].lawDegree as String,
            model!.data![i].rate,
            model!.data![i].consultCost,
            model!.data![i].consultingTypes!.first as List<String?>,
            model!.data![i].image,
            model!.data![i].name);
      }
      return model;
    } catch (e) {
      print(" error ${e.toString()}");
    }
  }

  @override
  Future filter({required String filter}) async {
    try {
      final response = await client.search(filter: filter);
      print("ResponseFilter $response");
      return response;
    } catch (e) {
      print("error ${e.toString()}");
    }
  }
}
