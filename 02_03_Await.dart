import 'dart:io';

main() async{
  print('Começou');
  appendFile();
  print(await readFile());
  print('_________________________ FIM'); 
}
// similar ao exemplo abaixo
// main() {  
//   print('Começou');
//   appendFile();
//   readFile().then((String value){
//     print(value);
//   print('_________________________ FIM'); 
//   });
// }
void appendFile(){
  File file = File(Directory.current.path +'/arquivo.txt');
  DateTime dt = DateTime.now();
  file.writeAsString(dt.toString() + '\r\n', mode: FileMode.append);
}
Future<String> readFile(){
  File file = File(Directory.current.path +'/arquivo.txt');
  return file.readAsString();
}