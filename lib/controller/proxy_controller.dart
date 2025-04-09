import 'package:get/get.dart';
import '/model/proxies_model.dart';

class ProxyController extends GetxController {
  final SocksModel socksModel = SocksModel();
  final HTTPModel httpModel = HTTPModel();
  final HTTPSModel httpsModel = HTTPSModel();

  // Set the server and port for SOCKS proxy
  void setSocksServerAndPort(String server, String port) {
    socksModel.server.value = server;
    socksModel.port.value = port;
  }

  // Set the server and port for HTTP proxy
  void setHTTPServerAndPort(String server, String port) {
    httpModel.server.value = server;
    httpModel.port.value = port;
  }

  // Set the server and port for HTTPS proxy
  void setHTTPSServerAndPort(String server, String port) {
    httpsModel.server.value = server;
    httpsModel.port.value = port;
  }

  // Set HTTP proxy authentication credentials
  void setHTTPAuthentication(String username, String password) {
    httpModel.username.value = username;
    httpModel.password.value = password;
  }

  // Set HTTPS proxy authentication credentials
  void setHTTPSAuthentication(String username, String password) {
    httpsModel.username.value = username;
    httpsModel.password.value = password;
  }

  // Set the value of a boolean observable (RxBool)
  void setSwitchValue(RxBool oldValue, bool newValue) {
    oldValue.value = newValue;
  }
}
