import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/services/data_service.dart';
import 'package:kiosk_sf/models/receiving_list.dart';

class Rcvwork8011PCubit extends Cubit<List<ReceivingList>> {
  final _dataService = DataService();

  Rcvwork8011PCubit() : super([]);

  void getReceivingLists() async => emit(await _dataService.getRcvWork8011P());
}