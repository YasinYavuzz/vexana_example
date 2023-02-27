import 'package:vexana/vexana.dart';

class ProjectNetworkManager {
  static ProjectNetworkManager? _instace;
  static ProjectNetworkManager get instance {
// ignore: prefer_conditional_assignment
    if (_instace == null) _instace = ProjectNetworkManager._init();
    return _instace!;
  }

  final String _baseUrl = "https://jsonplaceholder.typicode.com/";

  late INetworkManager networkManager;

  ProjectNetworkManager._init() {
    networkManager = NetworkManager<Null>(options: BaseOptions(baseUrl: _baseUrl));
  }
}
