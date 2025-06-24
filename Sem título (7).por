programa {
  inclua biblioteca Texto-->t
 inclua biblioteca Util-->u
  funcao inicio() {
    cadeia nome, raca, classe,termino
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
escreva("\nterminou de ler? ")
    leia(termino)
    limpa()
 }
}   
