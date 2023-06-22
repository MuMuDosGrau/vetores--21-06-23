programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    /*2)Carregar uma lista com 15 convidados e depois pedir para o usuário digitar o nome de uma pessoa e verificar se esta na lista. 
    Melhorar o sistema e fazer um loop perguntando se deseja verificar outro convidado, 
    no final quando não desejar mais verificar os convidados mostrar quantos convidados estavam na lista.*/

    inteiro tamanho
    cadeia chegado, opcao
    cadeia convidados[] = {"Gabriel", "Linhares", "Santos", "Beatriz", "Eduarda", "Bruno", "Pedro", "Mateus", "Matheus", 
    "Guilherme", "Kleyton", "Igor", "Douglas", "Mikael", "Luis", "Vitória", "Silva", "Artur"}
    logico lista = falso

    tamanho = u.numero_elementos(convidados)
    

    faca {
    escreva("Digite seu nome: ")
    leia(chegado)

      para(inteiro i = 0; i < tamanho; i++){
      se(chegado == convidados[i]){
        lista = verdadeiro
        pare
        }
      }
      
      se(lista){
        escreva("Seja bem vindo " , chegado , "!!!")
      }senao{
        escreva("Infelizmente você não esta na lista")
      }
      escreva("\nDeseja continuar? \n(s) Sim \n(n) Não\n")
    leia(opcao)
     }enquanto(opcao == "s")
  }
}