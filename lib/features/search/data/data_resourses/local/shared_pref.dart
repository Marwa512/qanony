import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SearchLocalData {
  late SharedPreferences searchData;
  static const String searchModel = "SEARCH";
  Future<void> setData({
    required SearchModel model,
  }) async {
    searchData = await SharedPreferences.getInstance();
  }

  Future<dynamic> getData() async {
    searchData = await SharedPreferences.getInstance();
    return searchData.get(searchModel);
  }
}
