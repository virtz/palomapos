// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:test_app/core/app_widget.dart';
import 'package:test_app/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/table_service/presentation/bloc/table_service_bloc.dart';
void main() {
  configureDependencies();
  runApp(MultiBlocProvider(
    providers: [
    BlocProvider(create:(_)=>getIt<TableServiceBlocBloc>())
    ],
    child:  MyApp(),
  ));
}
