part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loadInProgress() = _LoadInProgress;
  const factory SearchState.searchSuccessState({required SearchModel model}) =
      SearchSuccessState;
  const factory SearchState.searchFailState() = SearchFailState;
  const factory SearchState.filterSuccessState({required SearchModel model}) =
      FilterSuccessState;
  const factory SearchState.resetSuccessState({required SearchModel model}) =
      ResetSuccesState;
  const factory SearchState.selectConsultTypeState() = SelectConsultTypeState;
  const factory SearchState.fetchMoreDataSuccessState() =
      FetchMoreDataSuccessState;
  const factory SearchState.fetchMoreDataFailureState() =
      FetchMoreDataFailureState;
  const factory SearchState.selectPriceValuesState() = SelectPriceValuesState;
  const factory SearchState.dropDownMenuState() = DropDownMenuState;
}
