import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/cubits/8010/lot_warehousing_lists_states.dart';
import 'package:kiosk_sf/services/data_service.dart';


class LotWarehousingListsCubit extends Cubit<LotWarehousingListsStates> {
  LotWarehousingListsCubit() : super(InitialState()){
    emit(ReadyState());
  }

  final _dataService = DataService();
  late final lotWarehousingLists;

  void getData(rcvDt, rcvSeq, dtlSeq) async {
    try {
      emit(LoadingState());
      lotWarehousingLists = await _dataService.getRcvWork8010f30Q(rcvDt, rcvSeq, dtlSeq);
      emit(LoadedState(lotWarehousingLists));
    } catch(e) {
      rethrow;
    }
  }

}