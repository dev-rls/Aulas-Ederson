#Estrutura de Repetição:
# for
nomes= "Ederson"
for n in nomes:
    print(n)

nome = ["Pedro", "João", "Letícia"]
for n in nome:
    print(n)

# Break:
nomes = ["Pedro", "João", "Letícia"]
for n in nomes:
    print(n)
    if n  == "João":
        break


# Com a instrução CONTINUE podemos parar a iteração atual do loop e continuar com a próxima:
nomes = ["Pedro", "João", "Letícia"]
for n in nomes:
    if n  == "João":
        continue
    print(n)
# No exemplo acima, quando a iteração encontrar João, o algoritmo irá pular os passos abaixo e seguir para próxima
# iteração.

x = 10
while x > 0:
    x = x -1
    if x == 5:
        continue
print(x)

# Função RANGE() percorre um conjunto de código um determinado número de vezes. Ela retorna uma sequencia 
# de números, começando em 0 por padrão, e incrementos em 1 (por padrão), e termina em número especificado. 
# O valor dentro do parâmetro pode ser uma variável.

for x in range (6):
    print(x)
# O padrão da função é o 0 como valor inicial, no entanto é possível especificar o valor inicial 
# adicionando um paramêtro. Significa valores de 2 a 6(mas não incluindo 6).
for x in range (2,6):
    print(x)

# O padrão da função é o 0 como valor inicial, no entanto é possível especificar o valor inicial 
# adicionando um terceiro paramêtro: range (2,30,3):
#Início/Fim/Incremento

for x in range (2,10,2):
    print(x)

# Loop aninhado: é um loop  de um loop. O "loop interno" será executado uma vez para cada iteração do "loop externo":
for i in range(5):
    for j in range(6):
        print(i,j)

# Teste 01 - Desenvolva uma tabuada (1 ao 10) de multiplicação com o for for aninhado, não esqueça 
# de seguir o padrão de impressão:

for a in range(1,11):
    for b in range(1,11):
        print( a, "x", b , "=", a*b)
