import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/services/data_service.dart';
import 'package:kiosk_sf/class/rcv_work_8011P.dart';

class RcvWork8011PCubit extends Cubit<List<RcvWork8011P>> {
  final _dataService = DataService();

  RcvWork8011PCubit() : super([]);

  void getRcvWork8011P() async => emit(await _dataService.getRcvWork8011P());
}