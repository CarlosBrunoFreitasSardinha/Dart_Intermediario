import 'dart:io';
import 'dart:convert';

main() {
  //especifico para linux
  Process.start('cat', []).then(
    (Process result){

      //transforme a saida em texto
      result.stdout.transform(utf8.decoder).listen((data){
        print(data);
      });

    result.stdin.writeln('Ola Mundo!!!');
    Process.killPid(result.pid);
    
  });
}
