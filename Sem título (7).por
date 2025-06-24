programa {
  funcao inicio() {
    cadeia nome, raca, classe
    escreva("Qual seu nome?: ")
    leia(nome)
    escreva("Qual sua classe?(Mago, Mochileiro, Guerreiro, Curandeiro, Assassino): ")
    leia(classe)
    escolha(classe){
      caso "Mago": escreva("Vantagens:Ataque a longa distância, magia de proteção")escreva("Desvantagens: Pouca experiência de combate")
      pare             
      caso "Mochileiro": escreva("vantagens inventario grande conhecimentos sobre muitas culturas e línguas")
      pare             
      caso "Mago": escreva("Vantagens:Ataque a longa distância, magia de proteção")escreva("Desvantagens: Pouca experiência de combate")
      pare             
      caso "Mago": escreva("Vantagens:Ataque a longa distância, magia de proteção")escreva("Desvantagens: Pouca experiência de combate")
      pare             
    }
    escreva("Qual sua raça?(Humano, Elfo, Anão, Ogro, Híbrido felino): ")
    leia(raca)
 }
}   
