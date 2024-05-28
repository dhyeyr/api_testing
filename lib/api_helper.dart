import 'package:http/http.dart' as http;

class api_helper {
  static api_helper obj = api_helper._();

  final String _baseurl= "https://jsonplaceholder.typicode.com/posts";

  api_helper._();
  factory api_helper() {
return obj;
  }

  Future<String> GetApi() async {
    var future =await http.get(Uri.parse(_baseurl));
    return future.body;
  }

}
