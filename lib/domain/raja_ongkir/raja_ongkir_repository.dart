import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:new_flutter/domain/raja_ongkir/province/province_model.dart';
import 'package:new_flutter/domain/raja_ongkir/raja_ongkir_fail.dart';
import 'package:new_flutter/utils/constants.dart';

abstract class IRajaOngkir{
  Future<Either<RajaOngkirFail, List<ProvinceModel>>> getCityData();
}

class RajaOngkirRepository extends IRajaOngkir{
  final _dio = Dio();
  @override
  Future<Either<RajaOngkirFail, List<ProvinceModel>>> getCityData() async {
    Response response;
    try {      
      response = await _dio.get(Constants.base_url + 'province');
      List<dynamic> _listData = response.data['rajaongkir']['result'];

      var _listResult = _listData.map((item) => ProvinceModel.fromJson(item)).toList();

      return right(_listResult);
    } on DioError catch (err) {
      if (err.type == DioErrorType.response) {
        var _errorData =  err.response!.data['rajaongkir']['status'];
        var _errorModel = RajaOngkirFail.fromJson(_errorData);
        return left(_errorModel);
      }
      return left(RajaOngkirFail());
    }
  }
  
}