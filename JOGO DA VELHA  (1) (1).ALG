Algoritmo "jogo da velha"

procedimento jogo()
inicio
escreval("=============")
escreval("JOGO DA VELHA")
escreval("=============")
escreval("+--+--+--+")
para i de 0 ate 2 faca
   escreval("|", game[i,0], " |", game[i,1], " |", game[i,2], " |")
   escreval("+--+--+--+")
fimpara
fimprocedimento

procedimento ji()
inicio
game[0,0]<-("1")
game[0,1]<-("2")
game[0,2]<-("3")
game[1,0]<-("4")
game[1,1]<-("5")
game[1,2]<-("6")
game[2,0]<-("7")
game[2,1]<-("8")
game[2,2]<-("9")
fimprocedimento

procedimento jogada()
var
valid:logico
j, movimento: inteiro
inicio
limpatela()
jogo()
escreval("")
escreval("vez de: ", player)
escreval("onde deseja jogar?")
repita
leia(movimento)

se ((movimento >=1) e (movimento <=3)) entao
   i<-0
   se movimento = 1 entao
   j<-0
   senao
     se movimento = 2 entao
     j<-1
     senao
        j<-2
     fimse
   fimse
senao
   se ((movimento >=4) e (movimento <=6)) entao
      i<-1
      se movimento = 4 entao
   j<-0
   senao
     se movimento = 5 entao
     j<-1
     senao
        j<-2
     fimse
   fimse
   senao
      i<-2
      se movimento = 7 entao
   j<-0
   senao
     se movimento = 8 entao
     j<-1
     senao
        j<-2
     fimse
   fimse
   fimse
fimse
se ((game[i,j]="X")ou(game[i,j]="O") ou (movimento <1) ou (movimento >9)) entao
   escreval("opção invalida, escolha outra")
senao
   game[i,j]<-player
   valid<-verdadeiro
fimse

ate valid = verdadeiro

fimprocedimento

procedimento contador()
inicio
se (count mod 2) = 0 entao
   player<-("X")
senao
   Player<-("O")
fimse
count<-count+1
fimprocedimento

procedimento fim()
var
novoj:logico
inicio
se ((game[0,0]= game[0,1])e(game[0,1]=game[0,2]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[1,0]=game[1,1])e(game[1,1]=game[1,2]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[2,0]=game[2,1])e(game[2,1]=game[2,2]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[0,0]=game[1,0])e(game[1,0]=game[2,0]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[0,1]=game[1,1])e(game[1,1]=game[2,1]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[0,2]=game[1,2])e(game[1,2]=game[2,2]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[0,0]=game[1,1])e(game[1,1]=game[2,2]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se ((game[0,2]=game[1,1])e(game[1,1]=game[2,0]))entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Vitória de: ", player)
fimse

se count = 9 entao
novoj<-verdadeiro
limpatela()
jogo()
escreval("")
escreval("Ninguem ganhou")
fimse

se novoj=verdadeiro entao
   escreval("deseja jogar de novo?")
   escreval("s para sim / n para não")
   procfim()
fimse

fimprocedimento

procedimento procfim()
var
procverif : logico
nj:caractere
inicio
repita
leia(nj)
se ((nj= "s")ou(nj= "S")) entao
      count<-0
      ji()
      procverif <- verdadeiro
senao
      se ((nj = "n") ou (nj = "N")) entao
      verif<-verdadeiro
      procverif <- verdadeiro
      senao
      escreval("opção inválida")
      fimse
fimse
ate procverif = verdadeiro
fimprocedimento

Var
game : vetor[0..2,0..2] de caractere
i, count : inteiro
player: caractere
verif:logico

Inicio
ji()
repita
   contador()
   jogada()
   fim()
ate verif = verdadeiro
Fimalgoritmo