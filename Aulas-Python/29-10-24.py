# - Faça um programa que imprima na tela apenas os números ímpares entre 1 e 50.

# for x in range(1,50,2):
#     print(x)

# Faça um programa que imprima uma lista de times, adicionando um numeral. 
# Ex:  Entrada:
# Time = ["Palmeiras", "Curitiba", "São Paulo"]
# Saída:
# 1 - Palmeiras
# 2 - Curitiba
# 3 - São Paulo

# time = ["1 - Palmeiras", "2 - Curitiba", "3 - São Paulo"]
# for n in time:
#     print(n)

# Faça um programa que receba dois números inteiros e gere os números inteiros que estão no intervalo compreendido por eles.
# cont = 0
# n1 = int(input("Digite o primeiro número: "))
# n2 = int(input("Digite o segundo número: "))
# for i in range (n1,n2):
#     cont= cont +1 #contador
#     print(i)

# Altere o programa anterior para mostar no final a soma dos números.
# soma = 0
# n1 = int(input("Digite o primeiro número: "))
# n2 = int(input("Digite o segundo número: "))
# for i in range (n1+1,n2):
#     soma = soma + i #Acumulador
#     print(soma)


# Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro. Depois modifique o programa para que ele mostre os números um ao lado do outro.

# Primeira parte:
# for i in range (1,21):
#     print(i)

# Modificação:
# for i in range(1,21):
#         print(i, end = " ")

# Faça um programa que leia 5 números e informe a soma e a média dos números.
# cont = 0
# soma = 0

# for i in range (5):
#     n = int(input("Digite um número: "))
#     cont = cont +1
#     soma = soma + n #Acumulador
# print(soma)

# media = soma/cont
# print(media)

# A série de Fibonacci é formada pela sequência 0,1,1,2,3,5,8,13,21,34,55... Faça um programa capaz de gerar até série o n-ésimo termo.
n1 = 0
n2 = 1

x = int(input("Digite um n°: "))
for i in range(2, x + 1):
    n3 = n1 +n2
    print(n3, end = " ")
    n1 = n2
    n2 = n3
    