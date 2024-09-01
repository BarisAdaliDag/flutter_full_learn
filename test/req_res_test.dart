import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:full_learn_flutter/303/resource_model_15_1/model/resoruce_model.dart';
import 'package:full_learn_flutter/303/resource_model_15_1/service/reqress_service.dart';
import 'package:full_learn_flutter/303/resource_model_15_1/viewModel/a15_2_req_res_provider.dart';
import 'package:full_learn_flutter/303/testable_18_1/user_save_model.dart';
import 'package:full_learn_flutter/product/global/resource_context.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([ReqResProvider])
void main() {
  setUp(() {
    Map<String, Object> values = <String, Object>{'vb': "veli"};
    SharedPreferences.setMockInitialValues(values);
  });
  test('saveToLocale - Test', () {
    var mockProvider = ReqResProvider(ReqresService(Dio()));
    final resourceContext = ResourceContext();
    final result = mockProvider.saveToLocale(resourceContext, []);

    expect(result, []);
  });

  test('userTest - Test', () async {
    var userViewModel = UserSaveViewModel();
    final result = userViewModel.getReadData("vb", MockStore());

    expect(result, false);
  });

  test('fetchItems - Test', () async {
    var mockProvider = ReqResProvider(MockReqResService());
    final result = await mockProvider.fetchItems();

    expect(result, isNotEmpty);
  });
}

class MockReqResService extends IReqresService {
  MockReqResService() : super(Dio());

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    return ResourceModel(data: [const Data(color: 'a', id: 1)]);
  }
}
