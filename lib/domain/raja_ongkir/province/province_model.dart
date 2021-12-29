
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceModel with _$ProvinceModel {
  factory ProvinceModel({
    @Default('') @JsonKey(name: 'province_id') String provinceId,
    @Default('') @JsonKey(name: 'province') String province
  }) = _ProvinceModel;
	
  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
			_$ProvinceModelFromJson(json); 
}
