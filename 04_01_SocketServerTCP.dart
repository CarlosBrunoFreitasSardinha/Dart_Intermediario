import 'dart:io';
import 'dart:convert';

main() async{//comunicação telnet
  var serverSocket = await ServerSocket.bind('127.0.0.1', 30000);
  print('Escuntando msgs...');
  
  await for (var socket in serverSocket) {
    socket.listen(
      (List<dynamic> values){
      print('${socket.remoteAddress}: ${socket.remotePort} \n Foi dito: ${utf8.decode(values)}');

    });
  }
}