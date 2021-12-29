import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'raja_ongkir_state.dart';
part 'raja_ongkir_cubit.freezed.dart';

@injectable
class RajaOngkirCubit extends Cubit<RajaOngkirState> {
  RajaOngkirCubit() : super(RajaOngkirState.initial());
}
