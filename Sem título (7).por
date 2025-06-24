programa {
  inclua biblioteca Texto-->t
  funcao inicio() {
    cadeia nome, raca, classe
    escreva("Qual seu nome?: ")
    leia(nome)
    escreva("Qual sua classe?(Mago, Mochileiro, Guerreiro, Curandeiro, Assassino): ")
    leia(classe)
    escolha(classe){
      caso "Mago": escreva("Vantagens:Ataque a longa distância, magia de proteção\n")escreva("Desvantagens: Pouca experiência de combate")
      pare             
      caso "Mochileiro": escreva("vantagens inventario grande conhecimentos sobre muitas culturas e línguas\n")escreva("desvantagenspouca agilidade pouca experiencia de batalha")
      pare             
      caso "Guerreiro": escreva("Vantagens:consegue se curar conhecimentos de ervas e venenos\n")escreva("Desvantagens:pouca inteligência um pouco lento")
      pare             
      caso "Curandeiro": escreva("Vantagens:Ataque a longa distância, magia de proteção\n")escreva("Desvantagens:pouca força pouca experiencia de batalha")
      pare             
      caso "Assassino": escreva("Vantagens:furtivo, agil\n")escreva("Desvantagens:procurado pela justiça, passado traumático")
      pare             
    }
    escreva("\nQual sua raça?(Humano, Elfo, Anão, Ogro, Híbrido felino): ")
    leia(raca)
 }
}   
