programa {
  funcao inicio() {
   inteiro ouro,suprimentos,opcao
   ouro=50
   suprimentos=0
   escreva("Você tem, ",ouro," moedas de ouro.\n")
  escreva("Você possui, ", suprimentos," suprimentos.")
  escreva("\nEscolha uma opção:\n")
  escreva("1- comprar suprimentos (10 moedas cada).\n")
  escreva("2- equipar equipamentos.\n")
  escreva("3- sair da cidade, e ir para a masmorra.\n")
  escreva("Opção:")
  leia(opcao)

  caso(opcao==1){
    escreva("Você comprou 1 suprimento!\n")
    pare
  
    escreva("Você não tem ouro suficiente!\n")
  }senao se(opcao==2){
    suprimentos>0
    escreva("Você equipou seus suprimentos.\n")
  } 
  escreva("Você não tem suprimentos para equipar.\n")
  }se (opcao==3){
    escreva("Você saiu da cidade e foi para a masmorra!\n")
  }senao{
    escreva("Opção inválida. Tente novamente.\n")
  }
   }
  }
