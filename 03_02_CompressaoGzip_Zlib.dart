import 'dart:io';
import 'dart:convert';

main() {
  int zlib_comp = testeCompressao(zlib);
  int gzip_comp = testeCompressao(gzip);

  print('zlib = ${zlib_comp}');
  print('gzip = ${gzip_comp}');
}

String gerarDados() {
  String data = '';
  for (int i = 0; i < 1000; i++) {
    data = data + 'Olá Mundo\r\n';
  }
  return data;
}

int testeCompressao(var codec) {
  String data = gerarDados();
  List original = utf8.encode(data);
  List comprimido = codec.encode(original);
  List descomprimido = codec.decode(comprimido);

  print('testando ${codec.toString()}');
  print('Original ${original.length} bytes');
  print('Comprimido ${comprimido.length} bytes');
  print('Descomprimido ${descomprimido.length} bytes');

  print('');
  String decoded = utf8.decode(descomprimido);
  assert(data == decoded);
  return descomprimido.length;
}
