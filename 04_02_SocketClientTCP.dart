import 'dart:io';
import 'dart:convert';

main() async{
  bool loop = true;
  var socket = await Socket.connect('127.0.0.1', 30000);

  while(loop){
    print('Conectado! Pode falar agora');
    String text = stdin.readLineSync();
    socket.write(text);
  }
  await socket.close();
  exit(0);
}