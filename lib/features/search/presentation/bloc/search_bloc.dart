import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qanony/core/injection/service_locator.dart';
import 'package:qanony/core/utils/app_router.dart';
import 'package:qanony/features/search/data/model/search_model/datum.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:qanony/features/search/data/repositories/search_repo_imp.dart';
import 'package:qanony/features/search/domain/entities/filter_entity.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

@Singleton()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepoImp _searchRepoImp;
  SearchModel? searchModel;
  String dropdownvalue = 'محامي';

  FilterEntity filterEntity = FilterEntity(
      city: "القاهرة", rate: 5, price: const RangeValues(150, 700));

  // List of items in our dropdown menu
  var items = ['محامي', "خدمه", 'استشارة'];
  bool isFilter = false;
  bool isDropDown = false;
  List<Datum> searchDataModel = [];
  SearchBloc(this._searchRepoImp) : super(const SearchState.initial()) {
    on<SearchEvent>((
      event,
      emit,
    ) async {
      await event.when(
        searchEvent: (String? name, int? page) async {
          searchDataModel = [];
          emit(const SearchState.loadInProgress());
          try {
            var response =
                await _searchRepoImp.search(name: name ?? "", page: 0);
            searchModel = response;

            searchDataModel.addAll(searchModel!.data as Iterable<Datum>);
            if (kDebugMode) {
              print("DataModel bloc $searchDataModel");
            }
            emit(SearchState.searchSuccessState(model: searchModel!));
          } catch (error) {
            if (kDebugMode) {
              print("error $error");
            }
            emit(const SearchState.searchFailState());
          }
        },
        filterEvent: (String? filter) async {
          try {
            var response = await _searchRepoImp.filter(filter: filter ?? "");
            isFilter = true;
            emit(FilterSuccessState(model: response));
          } catch (e) {
            if (kDebugMode) {
              print("error $e");
            }
          }
        },
        resetEvent: () async {
          isFilter = false;
          var response = await _searchRepoImp.search(name: "");
          emit(ResetSuccesState(model: response));
        },
        selectConsultTypeEvent: (String? value) {
          emit(const _LoadInProgress());
          dropdownvalue = value!;

          isDropDown = false;

          emit(const SelectConsultTypeState());
        },
        fetchMoreDataEvent: (page) async {
          emit(const SearchState.loadInProgress());

          if (page! <= 31) {
            try {
              var response = await _searchRepoImp.search(page: page);
              searchModel = response;
              searchDataModel.addAll(searchModel?.data as Iterable<Datum>);
              if (kDebugMode) {
                print("length ${searchDataModel.length}");
              }
              emit(const FetchMoreDataSuccessState());
            } catch (e) {
              print("error $e");
            }
          } else {
            emit(const SearchState.fetchMoreDataFailureState());
          }
        },
        selectSliderValueEvent: (RangeValues? values) {
          emit(const _LoadInProgress());
          filterEntity.price = values!;
          emit(const SearchState.selectPriceValuesState());
        },
        dropDownMenuEvent: () {
          emit(const _LoadInProgress());
          isDropDown = !isDropDown;
          emit(const DropDownMenuState());
        },
      );
    });
  }
}
