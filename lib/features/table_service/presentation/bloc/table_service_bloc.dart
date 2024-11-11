import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' as j;
import 'package:test_app/features/table_service/domain/entities/menu_items.dart';
import 'package:test_app/features/table_service/domain/repositories/table_service_repository.dart';

import '../../../../core/failures/app_failure.dart';
import '../../data/models/order.dart';

part 'table_service_event.dart';
part 'table_service_state.dart';
part 'table_service_bloc.freezed.dart';

@j.lazySingleton
class TableServiceBlocBloc
    extends Bloc<TableServiceBlocEvent, TableServiceBlocState> {
  TableServiceRepository tableServiceRepository;
  TableServiceBlocBloc(this.tableServiceRepository)
      : super(TableServiceBlocState.initial()) {
    on<TableServiceBlocEvent>((event, emit) async {
      await event.map(
          loadOrders: (e) async {
            emit(const TableServiceBlocState.loading());
            final result = await tableServiceRepository.loadOrders();
            result.fold((l) {
              emit(TableServiceBlocState.loadFailure(l));
            }, (r) {
              emit(TableServiceBlocState.loadSuccess(r));
            });
          },
          saveOrders: (e) async {
            emit(const TableServiceBlocState.loading());
            List<MenuItemChild> items = List.from(
                e.orderList.map((e) => MenuItemChild.fromMap(e.toMap())));
            final result =
                await tableServiceRepository.createOrders(menuItemChild: items);
            await result.fold(
              (l) async {
                // Check if the handler is still active before emitting
                if (!emit.isDone) {
                  emit(TableServiceBlocState.saveFailure(l));
                }
              },
              (r) async {
                // Check if the handler is still active before emitting
                if (!emit.isDone) {
                  emit(const TableServiceBlocState.saveSuccess());
                }
              },
            );
          },
          addToOrderList: (e) {
            // e.copyWith(orderList:)
            // emit()
          },
          removeOrderFromList: (e) {});
    });
  }
}
