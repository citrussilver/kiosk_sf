import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/services/data_service.dart';
import 'package:kiosk_sf/class/user.dart';

class UserCubit extends Cubit<List<User>> {
  final _dataService = DataService();

  UserCubit() : super([]);

  void getUsers() async => emit(await _dataService.getUsers());
}