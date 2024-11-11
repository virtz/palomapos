// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/routes/app_router.dart' as _i3;
import 'features/table_service/data/datasources/order_db.dart' as _i4;
import 'features/table_service/data/datasources/table_service_local_data_source.dart'
    as _i5;
import 'features/table_service/data/repositories/table_service_repository_imp.dart'
    as _i7;
import 'features/table_service/domain/repositories/table_service_repository.dart'
    as _i6;
import 'features/table_service/presentation/bloc/table_service_bloc.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.OrderDatabase>(() => _i4.OrderDatabase());
    gh.lazySingleton<_i5.TableServiceLocalDataSource>(
        () => _i5.TableServiceLocalDataSourceImpl(db: gh<_i4.OrderDatabase>()));
    gh.lazySingleton<_i6.TableServiceRepository>(() =>
        _i7.TableServiceRepositoryImpl(gh<_i5.TableServiceLocalDataSource>()));
    gh.lazySingleton<_i8.TableServiceBlocBloc>(
        () => _i8.TableServiceBlocBloc(gh<_i6.TableServiceRepository>()));
    return this;
  }
}
