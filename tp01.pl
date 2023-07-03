%Trabalho Prático - Prolog.

%1º parte:
%Letra A) 
in_finalLista([], X, [X]). % Caso receba uma lista vazia, adiciona um único elemento passado como parâmetro.
in_finalLista([I|R], X, [I|R1]):- % Caso tenha elementos, a cabeça permanece inalterada, já que o elemento deve ser inserido no fim da lista.
    in_finalLista(R, X, R1). % Usa recursão para percorrer a lista até que o elemento X possa ser adicionado no final, retornando a lista R1.
%Para executar: in_finalLista([lista],valor a ser incluido,variavel para retorno da nova lista)

%Letra B)
inserirElemento(E,1,[G|C],[E,G|C]).%Caso a posição escolhida seja a primeira
inserirElemento(E,P,[H|C],[H|C1]):- 
    P1 is P - 1, inserirElemento(E,P1,C,C1).%Por meio de recursão, P é decrementado, percorrendo a lista até a posição desejada.
%Para executar: inserirElemento(elemento a ser inserido,posição,[lista],variável para armazenar a nova lista).

%Letra C)
remover(X,[X|Xcauda],1,Xcauda).%Caso o elemento seja o que ocupa a 1ª posição "Cabeça",será retornado somente a cauda.
remover(X,[Y|Xcauda],P,[Y|Ycauda]) :- P > 1,
    P1 is P - 1,
    remover(X,Xcauda,P1,Ycauda).%Por meio de recursão, enquanto a variável 'P'(posição do elemento na lista)
% for maior que 1, ele vai decrementando até essa condição ser negada,
% retornando a lista sem o elemento da posição de onde a recursão parou.
%Para executar: remover(elementoa a ser removido,[lista],posição a ser removida,variavel que ira retornar a nova lista). 

%Letra D)
potencia(_,0,1). %Qualquer número elevado a "0" é 1.
potencia(X,1,X). %Qualquer número elevado a "1" é ele mesmo.
potencia(X,Y,R) :- Y > 1, Z is Y-1, potencia(X,Z,R2), R is X * R2.

%predicado pega o X como base e o Y como expoente e armazena na variável R(Resultado).
%primeiro ele verifica se o índice é maior que 1, 
%caso seja, ele diminui 1 do índice e armazena na variável R1 de forma recursiva. 
%No final armazena em R(Resultado) a operação do número base X multiplicado pelo resultado da recursão.
%Para executar: potencia(número da base,expoente,varial que ira retornar a nova lista).

%Letra E)
% Foi necessario uma função auxiliar. Nesse caso, a função auxiliar será inverte()
palindromo(X):- inverte_lista(X,X). %A lista X sera palindromo se o inverso de X for igual a X
inverte_lista(X,XI):-inverte1_lista(X,[ ],XI). %inverte_lista() recebe como auxiliar inverte1().
inverte1_lista([ ],X,X). %Caso a lista seja vazia, a lista inversa sera vazia tambem.
inverte1_lista([Y|X],X2,X3):- %inverte1_lista() usa de recursividade para inverter os elementos da lista
    inverte1_lista(X,[Y|X2],X3).






%2º parte:
% Fatos: dados pela descrição do TP.
homem(pedro).
homem(marcos).
homem(ze).

mulher(maria).
mulher(joana).

idade(ze,30).
idade(maria,40).
idade(marcos,20).
idade(pedro,25).
idade(joana,28).

gosta(ze, aventura).
gosta(maria,comedia).
gosta(joana,romance).
gosta(marcos,terror).
gosta(marcos,romance).
gosta(pedro,romance).
gosta(maria,romance).

opcao(ze,20,40).
opcao(maria,25,55).

/*  Procura por pares X, Y que interessam por mesmo Z,
 * e garante que X é diferente de Y.
 * */
afinidade_filme(X, Y) :- gosta(X, Z), gosta(Y, Z), not(X == Y).

/*  Garante que X e Y é um casal,
 * indiferente da ordem.
 * */
casal(X, Y) :- homem(X), mulher(Y).
casal(X, Y) :- mulher(X), homem(Y).

/*  Procura por um Y que satisfaça a preferencia de X.
 * Serve de suporte para a implementação das outras.
 * */
afinidade_idade(X, Y) :-
    opcao(X, I, F),
    idade(Y, Z),
    Z >= I, Z =< F, not(X == Y).

% X, Y é um casal com afinidade de idade.
casal_afinidade_idade(X, Y) :-
    casal(X, Y),
    afinidade_idade(X, Y),
    afinidade_idade(Y, X).

% X, Y é um casal com afinidade de idade e filmes.
casal_total(X, Y) :- casal_afinidade_idade(X, Y), afinidade_filme(X, Y).






    
  
