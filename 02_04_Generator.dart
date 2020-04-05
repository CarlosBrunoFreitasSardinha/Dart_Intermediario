import 'dart:async';

gerador(){
  Iterable<int> geradorSincrono(int repeticao) sync*{
    int valor =0;

    while(valor < repeticao)
    yield ++valor;
  }
  /*retorna o total de 10 elemenos, cada valor gerado e devolvido imediatamente,
   enquanto a função continua gerando mais valores e os devolvendo até concluir a tarefa
   no caso desse print abaixo, de maneira sincrona
   */
  print(geradorSincrono(10));

  Stream<int> geradorAssincrono(int repeticao)async*{
    int valor=0;

    while(valor< repeticao)
    yield ++valor;
  }

  /*retorna o total de 10 elemenos, cada valor gerado e devolvido imediatamente,
   enquanto a função continua gerando mais valores e os devolvendo até concluir a tarefa
   no caso desse print abaixo, de maneira assincrona
   */
  geradorAssincrono(10).forEach((v)=>print(v));
}
main() {
  gerador();
}