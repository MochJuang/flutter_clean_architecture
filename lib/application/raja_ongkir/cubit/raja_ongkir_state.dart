part of 'raja_ongkir_cubit.dart';

@freezed
class RajaOngkirState with _$RajaOngkirState {
  const factory RajaOngkirState.initial() = _Initial;
  const factory RajaOngkirState.loading() = _Initial;
  const factory RajaOngkirState.error(RajaOngkirFail fail) = _Initial;
  const factory RajaOngkirState.onGetProvinceData(List<ProvinceModel> dataModel) = _Initial;
}
