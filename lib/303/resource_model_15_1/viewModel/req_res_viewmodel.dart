import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:full_learn_flutter/202/cache/a12_1_shared_learn_cache.dart';
import 'package:full_learn_flutter/303/resource_model_15_1/service/reqress_service.dart';

import '../../../product/service/project_dio.dart';
import '../model/resoruce_model.dart';

import '../view/req_res_view.dart';

//ilk  hali
abstract class ReqResViewModel extends LoadingStatefull<ReqResView>
    with ProjectDioMixin {
  late final IReqresService reqresService;
  //late final sadece init state icersinde deger verebilirsin
  //func change loading yok cunku LoadingState yapisi var

  List<Data> resources = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
