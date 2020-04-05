import 'dart:io';

main() {

  Process.run('ipconfig', []).then((ProcessResult result){
    print(result.stdout);
    print('Código de saída: ${result.exitCode}');// 0 - ocorreu tudo certo
  });
}
