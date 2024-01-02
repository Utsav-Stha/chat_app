import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveSetup {
  HiveSetup._();

  static Future get initHive => _initHive();

  static Future<void> _initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }
}

 Future<LazyBox> openBox(String name) async{
  if(Hive.isBoxOpen(name)){
    return  await Hive.lazyBox(name);
  }
  else{
    return await Hive.openLazyBox(name);
  }
}