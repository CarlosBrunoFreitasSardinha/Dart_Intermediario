import 'dart:io';
import 'dart:convert';

main() {
  
  int port = 3000;

  //Servidor
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port).then(
    (RawDatagramSocket udpSocket){
      print('Servidor Escutando...');
      udpSocket.listen(
        (RawSocketEvent event){
          if(event == RawSocketEvent.read){

            Datagram dg = udpSocket.receive();
            print('Cliente disse: ${utf8.decode(dg.data)}');
          }
        });
    });

  
}
