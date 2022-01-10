import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_flutter/domain/raja_ongkir/province/province_model.dart';
import 'package:new_flutter/domain/raja_ongkir/raja_ongkir_fail.dart';
import 'package:new_flutter/domain/raja_ongkir/raja_ongkir_repository.dart';
import 'package:dartz/dartz.dart';
part 'raja_ongkir_state.dart';
part 'raja_ongkir_cubit.freezed.dart';

@injectable
class RajaOngkirCubit extends Cubit<RajaOngkirState> {
  RajaOngkirCubit(this._rajaOngkir) : super(RajaOngkirState.initial());

  IRajaOngkir _rajaOngkir;

  Future getProvince() async {
    emit(RajaOngkirState.loading());

    try {
      final _result = await _rajaOngkir.getProvinceData();
      _result.fold(
        (l) => emit(RajaOngkirState.error(l)),
        (r) => emit(RajaOngkirState.onGetProvinceData(r))
      );    
    } catch (e) { 
      emit(RajaOngkirState.error(RajaOngkirFail().copyWith(description: e.toString())));
    }
  }
}
