import 'package:e_tranzact/services/config/app_config.dart';
import 'package:e_tranzact/services/config/asset_config.dart';

class ServiceInjectors {
  static final ServiceInjectors _instance = ServiceInjectors._internal();
  late AppConfig appConfig;
  late AssetConfig assetConfig;

  ///instantiate singleton services here for usage through the app
  ServiceInjectors._internal() {
    appConfig = AppConfig();
    assetConfig = AssetConfig();
  }

  factory ServiceInjectors() {
    return _instance;
  }
}
