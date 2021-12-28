import 'package:equatable/equatable.dart';
import 'package:kiosk_sf/models/receiving_list.dart';

abstract class ReceivingListsStates extends Equatable{}

class InitialState extends ReceivingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class ReadyState extends ReceivingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadingState extends ReceivingListsStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadedState extends ReceivingListsStates {
  LoadedState(this.rcvLists);
  final List<ReceivingList> rcvLists;
  @override
  // TODO: implement props
  List<Object> get props => [rcvLists];

}