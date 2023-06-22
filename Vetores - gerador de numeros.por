programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro numeros [50], numero
    logico naLista

    para (inteiro i = 0; i < 50; i++) {
      naLista = falso
      numero = u.sorteia(1, 100)
        para(inteiro y = 0; y < 50; y++){
          se(numero == numeros[y]) {
          naLista = verdadeiro
          i--
          pare
          }
      }

      se(naLista == falso){
        numeros[i] = numero
     }
    }

  para (inteiro i = 0; i < 50; i++){
    escreva(numeros[i] , ", ")
   }

   numero = u.sorteia (1, 100)
   para(inteiro i = 0; i < 50; i++){
    se(numero == numeros[i]){
      naLista = verdadeiro
      pare
    }
   }
   
    se(naLista == verdadeiro) {
      escreva("\n" , numero , " Esta na lista.")
    } senao {
      escreva("\n" , numero , " Não esta na lista.")
    }

  }
}
