programa {
  inclua biblioteca Texto-->t
 inclua biblioteca Util-->u
  funcao inicio() {
    cadeia nome, raca, classe,termino, desejo
    escreva("Qual o seu nome?: ")
    leia(nome)
    escreva("Qual sua classe?(Mago, Mochileiro, Guerreiro, Curandeiro, Assassino): ")
    leia(classe)
   classe=t.caixa_baixa(classe)
    escolha(classe){
      caso "mago": escreva(" Vantagens:Ataque a longa distância, magia de proteção\n")escreva(" Desvantagens: Pouca experiência de combate")
      pare             
      caso "mochileiro": escreva(" Vantagens:inventario grande conhecimentos sobre muitas culturas e línguas\n")escreva(" Desvantagens:pouca agilidade pouca experiencia de batalha")
      pare             
      caso "guerreiro": escreva(" Vantagens:consegue se curar conhecimentos de ervas e venenos\n")escreva(" Desvantagens:pouca inteligência um pouco lento")
      pare             
      caso "curandeiro": escreva(" Vantagens:Ataque a longa distância, magia de proteção\n")escreva(" Desvantagens:pouca força pouca experiencia de batalha")
      pare             
      caso "assassino": escreva(" Vantagens:furtivo, agil\n")escreva(" Desvantagens:procurado pela justiça, passado traumático")
      pare             
    }
    escreva("\nQual sua raça?(Humano, Elfo, Anão, Ogro, Híbrido felino): ")
    leia(raca)
  raca=t.caixa_baixa(raca)
escolha(raca){
      caso "elfo":escreva(" Vantagens:beleza explendida, é um magnata.\n")escreva(" Desvantegens:Pouca furtividade, Só sabe lutar com flechas")
      pare
      caso "humano":escreva(" Vantagens:Carismático,Mente ágil .\n")escreva(" Desvantegens:Desengonçado. ")
      pare
      caso "anão":escreva(" Vantagens:Mais proteção, Visão no escuro.\n")escreva(" Desvantegens:Tem um pequeno porte, e com isso é lento. ")
      pare
      caso "ogro":escreva(" Vantagens:Forte,Resistente.\n")escreva(" Desvantegens:Inteligencia baixa, Muito lento ")
      pare
      caso "híbrido felino":escreva(" Vantagens:Boa audição, e Boa visão.\n")escreva(" Desvantegens:Erva do gato, Pavor de água, Medo de cobra")
      pare
    }
escreva("\nterminou de ler?(enter) ")
    leia(termino)
    limpa()
escreva("Você acordou na estrada, à sua direita, há uma cidade, à esquerda uma masmorra,qual você deseja ir? ")
  leia(desejo)
  escolha(desejo){
    caso "direita":escreva("Você chegou na cidade!\n")
     inteiro ouro,suprimentos,opcao
   ouro=50
   suprimentos=0
   escreva("Você tem ",ouro," moedas de ouro.\n")
  escreva("Você possui ", suprimentos," suprimentos.")
  escreva("\nEscolha uma opção:\n")
  escreva("1- comprar suprimentos.\n")
  escreva("2- equipar equipamentos.\n")
  escreva("3- sair da cidade, e ir para a masmorra.\n")
  escreva("Opção:")
  leia(opcao)
  escolha(opcao){
    caso "1":escreva("Você comprou um suprimento\n")
    pare
    caso "2":escreva("Você equipou seus suprimentos\n")
    pare
    caso "3":escreva("Você saiu da cidade e foi para a masmorra!\n")
     inteiro monstro, personagem
      escreva("Você encontrou morcegos na masmorra!\n")
      escreva("Os morcegos te atacaram.\n ")
      escreva("Eles te machucaram e você revidou.\n")
      monstro=50
      escreva("dê um enter para rodar o dado d100 para o dano. \n")
    
      personagem=u.sorteia(1,100)
      escreva("Seu dano foi ", personagem)
      escolha(raca){
        caso "elfo":personagem+10 escreva("\nvocê ganha +10 por ser um elfo.")
        pare
        caso "anão": personagem+15 escreva("\n você ganhou +15 por ser um anão.")
        pare
        caso "ogro": personagem+20 escreva("\n você ganhou +20 por ser um ogro.")
        pare
        caso "híbrido de felino": personagem+5 escreva("\n você ganhou +5 por ser um híbrido.")
        pare
      }
      escolha(classe){
        caso "mago":personagem-5 escreva("\n você perdeu 5 por ser um mago.")
        pare
        caso "mochileiro":personagem-15 escreva("\n você perdeu 15 por ser um mochileiro.")
        pare
        caso "guerreiro":personagem+15 escreva("\n você ganhou 15 por ser um guerreiro.")
        pare
        caso "curandeiro":personagem-10 escreva("\n você perdeu 10 por ser um curandeiro.")
        pare
        caso "assassino":personagem+10 escreva("\n você ganhou 10 por ser um assassino.")
        pare
      }
      
      
      se(monstro<personagem){
        escreva("\nVitoria!! Você deixou os morcegos todos capengas.\n")
        escreva("Você continua até o final da masmorra encontrando um baú cheio de jóias que tornaram você o ",classe," mais famoso e rico deste estranho lugar.\n")
        escreva("fim!")
      }senao se(monstro>personagem){
        escreva("\nDerrota🤦 Os morcegos acabaram contigo.\n")
        escolha(classe){
          caso "assassino":escreva("Você consegue com muita dificuldade chegar a estrada,você é um assassino procurado então teve que esperar uma carruaguem passar para conseguir se esconder dos guardas reais para conseguiro se recuperar da masmorra.\n")
          pare
          caso contrario:escreva("Alguns aventureiro te encontrarem te levaram para a cidade para se recuperar.\n")
          
        }escreva("fim!")
      
      }senao{
        escreva("\nVocê e os morcegos estão machucados.\n")
        escreva("Você se obriga fugir dos morcegos e se preparar melhor para a proxima\n")
        escreva("fim!")
      }
      pare
    pare
    
  }


    pare
    caso "cidade":escreva("Você chegou na cidade!\n")
    inteiro ouro,suprimentos,opcao
   ouro=50
   suprimentos=0
   escreva("Você tem, ",ouro," moedas de ouro.\n")
  escreva("Você possui, ", suprimentos," suprimentos.")
  escreva("\nEscolha uma opção:\n")
  escreva("1- comprar suprimentos.\n")
  escreva("2- equipar equipamentos.\n")
  escreva("3- sair da cidade, e ir para a masmorra.\n")
  escreva("Opção:")
  leia(opcao)
  escolha(opcao){
    caso "1":escreva("Você comprou um suprimento\n")
    pare
    caso "2":escreva("Você equipou seus suprimentos\n")
    pare
    caso "3":escreva("Você saiu da cidade e foi para a masmorra!\n")
     inteiro monstro, personagem
      escreva("Você encontrou morcegos!\n")
      escreva("Os morcegos te atacaram.\n ")
      escreva("Eles te machucaram e você revidou.\n")
      monstro=50
      escreva("dê um enter para rodar o dado d100 para o dano. \n")
    
      personagem=u.sorteia(1,100)
      escreva("Seu dano foi ", personagem)
      escolha(raca){
        caso "elfo":personagem+10 escreva("\nvocê ganha +10 por ser um elfo.")
        pare
        caso "anão": personagem+15 escreva("\n você ganhou +15 por ser um anão.")
        pare
        caso "ogro": personagem+20 escreva("\n você ganhou +20 por ser um ogro.")
        pare
        caso "híbrido de felino": personagem+5 escreva("\n você ganhou +5 por ser um híbrido.")
        pare
      }
      escolha(classe){
        caso "mago":personagem-5 escreva("\n você perdeu 5 por ser um mago.")
        pare
        caso "mochileiro":personagem-15 escreva("\n você perdeu 15 por ser um mochileiro.")
        pare
        caso "guerreiro":personagem+15 escreva("\n você ganhou 15 por ser um guerreiro.")
        pare
        caso "curandeiro":personagem-10 escreva("\n você perdeu 10 por ser um curandeiro.")
        pare
        caso "assassino":personagem+10 escreva("\n você ganhou 10 por ser um assassino.")
        pare
      }
      
      
      se(monstro<personagem){
        escreva("\nVitoria!! Você deixou os morcegos todos capengas.\n")
        escreva("Você continua até o final da masmorra encontrando um baú cheio de jóias que tornaram você o ",classe," mais famoso e rico deste estranho lugar.\n")
        escreva("fim!")
      }senao se(monstro>personagem){
        escreva("\nDerrota🤦 Os morcegos acabaram contigo.\n")
        escolha(classe){
          caso "assassino":escreva("Você consegue com muita dificuldade chegar a estrada,você é um assassino procurado então teve que esperar uma carruaguem passar para conseguir se esconder dos guardas reais para conseguiro se recuperar da masmorra.\n")
          pare
          caso contrario:escreva("Alguns aventureiro te encontrarem te levaram para a cidade para se recuperar.\n")
          
        }escreva("fim!")
      
      }senao{
        escreva("\nVocê e os morcegos estão machucados.\n")
        escreva("Você se obriga fugir dos morcegos e se preparar melhor para a proxima\n")
        escreva("fim!")
      }
      pare
    pare
    
  }
    caso "masmorra":escreva("Você chegou a masmorra e entrou nela.\n")
     inteiro monstro, personagem
      escreva("Você encontrou morcegos!\n")
      escreva("Os morcegos te atacaram.\n ")
      escreva("Eles te machucaram e você revidou.\n")
      monstro=50
      escreva("dê um enter para rodar o dado d100 para o dano. \n")
    
      personagem=u.sorteia(1,100)
      escreva("Seu dano foi ", personagem)
      escolha(raca){
        caso "elfo":personagem+10 escreva("\nvocê ganha +10 por ser um elfo.")
        pare
        caso "anão": personagem+15 escreva("\n você ganhou +15 por ser um anão.")
        pare
        caso "ogro": personagem+20 escreva("\n você ganhou +20 por ser um ogro.")
        pare
        caso "híbrido de felino": personagem+5 escreva("\n você ganhou +5 por ser um híbrido.")
        pare
      }
      escolha(classe){
        caso "mago":personagem-5 escreva("\n você perdeu 5 por ser um mago.")
        pare
        caso "mochileiro":personagem-15 escreva("\n você perdeu 15 por ser um mochileiro.")
        pare
        caso "guerreiro":personagem+15 escreva("\n você ganhou 15 por ser um guerreiro.")
        pare
        caso "curandeiro":personagem-10 escreva("\n você perdeu 10 por ser um curandeiro.")
        pare
        caso "assassino":personagem+10 escreva("\n você ganhou 10 por ser um assassino.")
        pare
      }
      
      
      se(monstro<personagem){
        escreva("\nVitoria!! Você deixou os morcegos todos capengas.\n")
        escreva("Você continua até o final da masmorra encontrando um baú cheio de jóias que tornaram você o ",classe," mais famoso e rico deste estranho lugar.\n")
        escreva("fim!")
      }senao se(monstro>personagem){
        escreva("\nDerrota🤦 Os morcegos acabaram contigo.\n")
        escolha(classe){
          caso "assassino":escreva("Você consegue com muita dificuldade chegar a estrada,você é um assassino procurado então teve que esperar uma carruaguem passar para conseguir se esconder dos guardas reais para conseguiro se recuperar da masmorra.\n")
          pare
          caso contrario:escreva("Alguns aventureiro te encontrarem te levaram para a cidade para se recuperar.\n")
          
        }escreva("fim!")
      
      }senao{
        escreva("\nVocê e os morcegos estão machucados.\n")
        escreva("Você se obriga fugir dos morcegos e se preparar melhor para a proxima\n")
        escreva("fim!")
      }
      pare

  

   caso "esquerda":escreva("Você chegou a masmorra e entrou nela.\n")
    inteiro monstro, personagem
      escreva("Você encontrou morcegos!\n")
      escreva("Os morcegos te atacaram.\n ")
      escreva("Eles te machucaram e você revidou.\n")
      monstro=50
      escreva("dê um enter para rodar o dado d100 para o dano. \n")
    
      personagem=u.sorteia(1,100)
      escreva("Seu dano foi ", personagem)
      escolha(raca){
        caso "elfo":personagem+10 escreva("\nvocê ganha +10 por ser um elfo.")
        pare
        caso "anão": personagem+15 escreva("\n você ganhou +15 por ser um anão.")
        pare
        caso "ogro": personagem+20 escreva("\n você ganhou +20 por ser um ogro.")
        pare
        caso "híbrido de felino": personagem+5 escreva("\n você ganhou +5 por ser um híbrido.")
        pare
      }
      escolha(classe){
        caso "mago":personagem-5 escreva("\n você perdeu 5 por ser um mago.")
        pare
        caso "mochileiro":personagem-15 escreva("\n você perdeu 15 por ser um mochileiro.")
        pare
        caso "guerreiro":personagem+15 escreva("\n você ganhou 15 por ser um guerreiro.")
        pare
        caso "curandeiro":personagem-10 escreva("\n você perdeu 10 por ser um curandeiro.")
        pare
        caso "assassino":personagem+10 escreva("\n você ganhou 10 por ser um assassino.")
        pare
      }
      se(monstro<personagem){
        escreva("\nVitoria!! Você deixou os morcegos todos capengas.\n")
        escreva("Você continua até o final da masmorra encontrando um baú cheio de jóias que tornaram você o ",classe," mais famoso e rico deste estranho lugar.\n")
        escreva("fim!")
      }senao se(monstro>personagem){
        escreva("\nDerrota🤦 Os morcegos acabaram contigo.\n")
        escolha(classe){
          caso "assassino":escreva("Você consegue com muita dificuldade chegar a estrada,você é um assassino procurado então teve que esperar uma carruaguem passar para conseguir se esconder dos guardas reais para conseguiro se recuperar da masmorra.\n")
          pare
          caso contrario:escreva("Alguns aventureiro te encontrarem te levaram para a cidade para se recuperar.\n")
          
        }escreva("fim!")
      
      }senao{
        escreva("\nVocê e os morcegos estão machucados.\n")
        escreva("Você se obriga fugir dos morcegos e se preparar melhor para a proxima\n")
        escreva("fim!")
      }
      pare
  }
 }
}   
