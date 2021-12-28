import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/cubits/receiving_lists_states.dart';
import 'package:kiosk_sf/services/data_service.dart';

class ReceivingListsCubit extends Cubit<ReceivingListsStates> {
  ReceivingListsCubit() : super(InitialState()){
    emit(ReadyState());
  }

  final _dataService = DataService();
  late final rcvLists;

  void getData(startDate, endDate) async {
    try {
      emit(LoadingState());
      rcvLists = await _dataService.getRcvWork8011P(startDate, endDate);
      emit(LoadedState(rcvLists));
    } catch(e) {
      rethrow;
    }
  }

}