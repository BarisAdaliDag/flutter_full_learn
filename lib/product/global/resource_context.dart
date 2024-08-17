import '../../303/resource_model_15_1/model/resource_model.dart';

// multi provider gostermek icin 2. ekledi
class ResourceContext {
  ResourceModel? model;

  void saveModel(ResourceModel? model) {
    this.model = model;
  }

  void clear() {
    model = null;
  }
}
