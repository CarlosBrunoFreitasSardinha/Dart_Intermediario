import 'http/http.dart' as http;//biblioteca deve serimportada

main() async{

  //trabalhando com Post
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'nome=carlos&idade=23');
  print('.:POST:.');
  print('O servidor respondeu com o código de status ${response.statusCode}');
  print('O corpo da requisicao é: \n\n ${response.body}');

  //trabalhando com get
  url = 'http://dartlang.org/';
  response = await http.get(url);
  print('.:GET:.');
  print('O servidor respondeu com o código de status ${response.statusCode}');
  print('O corpo da requisicao é: \n\n ${response.body}');

}
