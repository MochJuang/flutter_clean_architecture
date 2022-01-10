import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:new_flutter/application/raja_ongkir/cubit/raja_ongkir_cubit.dart';
import 'package:new_flutter/injectable.dart';

class HomePage extends StatefulWidget {
  static final String TAG = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rajaOngkirCubit = getIt<RajaOngkirCubit>();
  
  @override
  void initState() { 
    rajaOngkirCubit.getProvince();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => rajaOngkirCubit,
        child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: (){},
              loading: (e) {
                print('IS Loading');
              }, 
              error: (err) {
                print('Error Data');
                print(err);
              } , 
              onGetProvinceData: (data) {
                print(data.dataModel);
              });
          },
          builder: (context, state) {
            return Container();
          },
        ),
      ),
    );
  }
}
