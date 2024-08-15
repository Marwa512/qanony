abstract class SearchRepo {
  Future<dynamic> search({required String name});
  Future<dynamic> filter({required String filter});
}
