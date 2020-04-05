import 'dart:io';
import 'dart:convert';

main() {
    String data = '';
    for (int i =0; i< 10; i++) {
      data = data +'Olá Mundo\r\n';
    }
    
    List original = utf8.encode(data);
    List comprimido = gzip.encode(original);
    List descomprimido = gzip.decode(comprimido);

    print('Original ${original.length} bytes...');
    print('Comprimido ${comprimido.length} bytes...');
    print('Descomprimido ${descomprimido.length} bytes...');

    String decoded = utf8.decode(descomprimido);

    //verifica se dado original é igual dado obtido pela decodificacao
    assert(data == decoded);
    print('\n\n ========================  DESCOMPRIMIDO========================');
    print(decoded);
}