# 05 -
# 
#    

# nota1 = float(input("Digite sua nota 1: "))
# nota2 = float(input("Digite sua nota 2: "))
# nota3 = float(input("Digite sua nota 3: "))
# nota4 = float(input("Digite sua nota 4: "))

# media=(nota1+nota2+nota3+nota4)/4
# if media == 10:
#     print("Aprovado com distinção")
# elif media > 7:
#     print("Aprovado", media)
# elif media < 7:
#     print("Reprovado", media)


# 10 - As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe contrataram para desenvolver o programa que calculará os reajustes.
# Faça um programa que recebe o salário de colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
# salário de R$ 280,00(incluindo): aumento de 20%
# salários entre R$ 280,00 e R$ 700,00: aumento de 15%
# salários entre R$ 700,00(incluíndo) e R$ 1500,00: aumento de 10%
# salários entre R$ 1500,00(incluíndo) em diante: aumento de 5% Após o aumento ser realizado, informe na tela:
# o salário antes do reajuste;
# o percentual de aumento aplicado;
# o valor do aumento;
# o novo salário, após o aumento.

salario_atual= float(input("Digite seu salário: "))
if salario_atual <= 280:
    porc=20
elif salario_atual>280 and salario_atual < 700:
    porc=15

elif salario_atual>=700 and salario_atual < 1500:
    porc=10

elif salario_atual >= 1500:
    porc=5

    aumento = salario_atual*porc/100
    total = aumento + salario_atual

    print("Aumento: ",  aumento)
    print("Salário: ",  salario_atual)
    print("Total: ",  total)
    print("Porcentagem: ",  porc)

# 13 - Faça um programa que leias as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre, e calcule a sua média. A atribuição
# de conceitos obedece a tabela abaixo:
# Média de Aproveitamento Conceito
# Entre 9.1 e 10.0 A
# Entre 7.5 e 9.0  B
# Entre 6.0 e 7.5  C
# Entre 4.0 e 6.0  D
# Entre 4.0 e zero E
# O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem "APROVADO" se o conceito for A, B, ou C ou "REPROVADO" se o conceito for D e E.
a = float(input("Digite sua nota 1: "))
b = float(input("Digite sua nota 2: "))
c = float(input("Digite sua nota 3: "))
d = float(input("Digite sua nota 4: "))

media=(a+b+c+d)/4
e=0
if media == 9.1 and media <=10.0:
    print(a, "Aprovado")

elif media > 7.5 and media < 9.0:
    print(b, "Aprovado")

elif media >= 6.0 and media < 7.5:
    print(c, "Aprovado")

elif media >= 4.0 and media < 6.0:
   print(d, "Reprovado")

elif media >= 4.0 and media == 0.0:
    print(e, "Reprovado")

# 15 - Faça um programa que faça 5 perguntas para uma pessoa sobre um crime. As perguntas são:
# "Telefonou para vitíma?"
# "Esteve no local do crime?"
# "Mora perto da vitíma?"
# "Devia para a vítima?"
# "Já trabalhou com a vítima?"
# O programa deve no final emitir uma classificação sobre a participação da pessoa no crime. Se a pessoa responder positivamente a 2 questões ela deve ser classificada
# como "Suspeita", entre 3 e 4 como "Cúmplice" e 5 como "Assassino". Caso contrario, ele será classificado como "Inocente".

a = input("Telefonou para vitíma?: ")
b = input("Esteve no local do crime?: ")
c = input("Mora perto da vitíma?: ")
d = input("Devia para a vítima?: ")
e = input("Já trabalhou com a vítima?: ")

count=0

if a == "sim":
    count = count +1
if b == "sim":
    count = count +1
if c == "sim":
    count = count +1
if d == "sim":
    count = count +1
if e == "sim":
    count = count +1

if count == 5:
    print("Assassino")

elif count == 4 or count == 3:
    print("Cúmplice")

elif count == 2:
    print("Suspeita")

elif count == 1 or count == 0:
    print("Inocente")

# Um posto está vendendo combustíveis com a seguinte tabela de descontos:
# Alcool: até 20 litros, desconto de 3% por litro acima de 20 listros, desconto de 5% por litro.

# Gasolina: até 20 litros, desconto de 4% por litro acima de 20 litros, desconto de 6% por litro.
# Escreva um algoritmo que leia o número de litros vendidos, o tipo de combustível(codificado da seguinte forma: A-ácool, G-gasolina), calcule 
# e imprima o valor a ser pago cliente sabendo-se que o preço do litro da gasolina é R$ 2,50 o preço do litro do álcool é R$ 1,90.alcool = 1.90

alcool = 1.90
gasolina = 2.50

combustivel = input("Digite o tipo de combustível ( A para álcool, G para gasolina): ")
litros_vendidos = float(input("Digite o número de litros vendidos: "))

if combustivel == 'A':
 if litros_vendidos < 20:
    desconto = 0.03
else:
    desconto = 0.05
    preco_litro = alcool

    if combustivel == 'G':
        desconto = 0.04
    else:
        desconto = 0.06
        preco_litro = gasolina

        sem_desconto = litros_vendidos*preco_litro
        desconto = sem_desconto*desconto
        com_desconto = sem_desconto-desconto

        print("Valor a ser pago com desconto: R$ ", com_desconto)
        print("Valor do desconto: R$ ", desconto)

















