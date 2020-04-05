import 'dart:io';

main() {
  print('S.O. ${Platform.operatingSystem} ${Platform.version}');

  if (Platform.isLinux)
    print('Rodando código Linux');
  else if (Platform.isWindows)
    print('Rodando código Windows');
  else if (Platform.isMacOS)
    print('Rodando código Mac');
  else
    print('Outro Sistema!');

  print('\n##################################################################');
  print('Path: ${Platform.script.path}');
  print('Dart: ${Platform.executable}');
  print('##################################################################');
  print('Variáveis de ambiente: ');
  
  Platform.environment.keys.forEach((key){
    print('${key} ${Platform.environment[key]}');
  });
}
