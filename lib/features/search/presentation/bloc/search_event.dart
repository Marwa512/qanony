part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchEvent({required String name, int? page}) =
      Search;
  const factory SearchEvent.filterEvent({String? filter}) = FilterEvent;
  const factory SearchEvent.resetEvent() = ResetEvent;
  const factory SearchEvent.selectConsultTypeEvent({String? value}) =
      SelectConsultTypeEvent;
  const factory SearchEvent.fetchMoreDataEvent({int? page}) =
      FetchMoreDataEvent;

  const factory SearchEvent.selectSliderValueEvent({RangeValues? values}) =
      SelectSliderValueEvent;
  const factory SearchEvent.dropDownMenuEvent() = DropDownMenuEvent;
}
