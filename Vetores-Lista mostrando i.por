programa {
  inclua biblioteca Texto --> txt
  funcao inicio() {
    inteiro posicao
    cadeia nomesComI[10], nome
    cadeia nomes[] = { "Gabriel" , "Silvio" , "Paulo" , "Matheus" , "Vinicius" , "Maria" , "Isadora" , "Getulio" , "Stalin" , "Elektrifikatsia"}
    inteiro indice = 0
 
    para(inteiro i = 0; i < 10; i++){
      nome = txt.caixa_baixa(nomes[i])
      posicao = txt.posicao_texto("i" , nome , 0)
      se(posicao >= 0) {
        nomesComI[indice] = nomes[i]
        indice++
      }
    }

    para(inteiro i = 0; i < 10; i++){
      escreva(nomesComI[i] , "\n")
    }
  }
}
