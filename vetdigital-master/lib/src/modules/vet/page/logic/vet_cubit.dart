import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'vet_state.dart';

class VetCubit extends Cubit<VetState> {
  VetCubit() : super(VetInitial());
}
