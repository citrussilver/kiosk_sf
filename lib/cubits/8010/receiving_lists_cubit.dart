import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/cubits/8010/receiving_lists_states.dart';
import 'package:kiosk_sf/models/8010/receiving_list.dart';
import 'package:kiosk_sf/services/data_service.dart';

class ReceivingListsCubit extends Cubit<ReceivingListsStates> {
  ReceivingListsCubit() : super(InitialState()){
    emit(rlReadyState());
  }

  final _dataService = DataService();

  void getRcvWork8011P_10Q(startDate, endDate) async {
    try {
      emit(rlLoadingState());
      late final List<ReceivingList> rcvLists;
      rcvLists = await _dataService.getRcvWork8011P_10Q(startDate, endDate);
      emit(rlLoadedState(rcvLists));
    } catch(e) {
      rethrow;
    }
  }

}