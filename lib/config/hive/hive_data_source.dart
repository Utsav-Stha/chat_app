import 'package:messenger_app/config/hive/hive_setup.dart';
import 'package:messenger_app/config/hive/local_data_source.dart';

class HiveDataSource extends LocalDataSource {
  @override
  Future<bool> isFirstInstalled() async {
    print("HiveDataSource  ifFirstinstalled called ");

    try {
      final hiveAuthBox = await openBox('FirstInstalled');
      final result = await hiveAuthBox.get('status');
      return (result ?? true);
    } catch (e) {
      return true;
    }
  }

  @override
  Future<bool> updateFirstInstalled(bool value) async{
    print("HiveDataSource  update called ");
    try{
      final hiveAuthBox =  await openBox('FirstInstalled');
      await hiveAuthBox.put('status', value);
      final result = await isFirstInstalled();
      return result;
    }catch(e){
      return false;
    }

  }
}
