import 'package:equatable/equatable.dart';
import 'package:kiosk_sf/models/8010/lot_warehousing_list.dart';

abstract class LotWarehousingListsStates extends Equatable{}

class InitialState extends LotWarehousingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class ReadyState extends LotWarehousingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadingState extends LotWarehousingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadedState extends LotWarehousingListsStates {
  LoadedState(this.lotWarehousingLists);
  final List<LotWarehousingList> lotWarehousingLists;
  @override
  // TODO: implement props
  List<Object> get props => [lotWarehousingLists];

}