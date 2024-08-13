// 12. video 26 dk
//Exception Yazma
//extend yerine implement kullanma sebebimiz
//birebir ayni ust class kullanma istegi
class SharedNotInitiazleException implements Exception {
  @override
  String toString() {
    return 'Your prefences has not initiazled right now';
  }
}
