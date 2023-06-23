programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro opcao
    cadeia produtos[] = {"Mouse Logitec" , "Teclado Razer" , "HD Toshiba" , "Monitor 19 Samsung" , "HeadSet Hyperx"}
    real precos[] = {99.90 , 690.90 , 250.00 , 1200.00 , 360.00}
    real totalProduto = 0

    faca{

      escreva("Bem vindo ao SenaiGames!\nEscolha uma opção: " ,
      "\n(1)catalogo" ,
      "\n(2)Pesquisar produto por nome" ,
      "\n(3)Pesquisar produto com preços acima de R$100,00" ,
      "\n(4)Pesquisar produto com preços até R$100,00" ,
      "\n(5)Sair\nOpcao: ")
      leia(opcao)
      

      escolha(opcao) {
        caso 1 :
          para(inteiro i = 0; i < 5; i++){
            escreva(produtos[i] , " R$" , precos[i] , "\n")
            totalProduto += precos[i]
          }
          escreva("Total :" , totalProduto ,  "\n")
        pare

        caso 2 :

        cadeia nomeProduto , produto
        escreva("Digite o nome do produto desejado: ")
        leia(nomeProduto)

        para(inteiro i = 0; i < 5; i++){
          produto = txt.caixa_baixa(produtos[i])
          nomeProduto = txt.caixa_baixa(nomeProduto)

          se(txt.posicao_texto(nomeProduto, produto, 0) >= 0){
            escreva(produtos[i] , " ")
          }
        }

        escreva("\n")
        pare
  

      }
    }enquanto(opcao != 5)
  }
}
