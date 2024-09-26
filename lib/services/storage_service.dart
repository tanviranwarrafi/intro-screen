import 'package:tutorial/constants/storage_keys.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/libraries/local_storage.dart';

class StorageService {
  var _storage = sl<LocalStorage>();

  Future<void> removeData({required String key}) => _storage.removeData(key: key);

  bool get intro => _storage.readData(key: INTRO) ?? false;
  void setIntro(bool data) => _storage.storeData(key: INTRO, value: data);
}
