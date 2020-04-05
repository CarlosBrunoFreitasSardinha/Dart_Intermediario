import 'dart:io';
import 'dart:convert';

main() {
  int port = 3000;

  //Servidor
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port).then(
    (RawDatagramSocket udpSocket){
      while(true){
        print('Conectado! Pode falar agora');
        String text = stdin.readLineSync();
        udpSocket.send(utf8.encode(text), InternetAddress.loopbackIPv4, port);
      }
    });
}
