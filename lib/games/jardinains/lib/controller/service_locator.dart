import 'package:get_it/get_it.dart';
import '../controller/jardinain_controller.dart';

GetIt getIt = GetIt.instance;

initiateSL(){
  getIt.registerSingleton(JardinainController());
}
