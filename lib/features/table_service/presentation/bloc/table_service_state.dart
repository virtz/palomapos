part of 'table_service_bloc.dart';

@freezed
class TableServiceBlocState with _$TableServiceBlocState {
  const factory TableServiceBlocState(
      {required List<MenuItemChild> orderList}) = _TableServiceBlocState;
  factory TableServiceBlocState.initial() =>
      const _TableServiceBlocState(orderList: []);
  const factory TableServiceBlocState.loading() = _LoadingMovies;
  const factory TableServiceBlocState.loadFailure(AppFailure failure) =
      _OrderLoadFailure;
  const factory TableServiceBlocState.loadSuccess(List<Order> orderList) =
      _OrderLoadSuccess;
  const factory TableServiceBlocState.saveFailure(AppFailure failure) =
      _OrderSaveFailure;
  const factory TableServiceBlocState.saveSuccess() = _OrderSaveSuccess;
}
