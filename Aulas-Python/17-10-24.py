# While :

# While True:

# while True:
#     print("loop infinito!\n")

# Break: Interrompe o laço de repetição. Em Python, a instrução break

while True:
    valor=int(input("Digite 1 ou 0 para fim: "))
    if valor ==1:
        print("Valor correto")
    else:
        print("Valor para sair")
        break


# Continue

while True:
    valor=int(input("Digite 1 ou 0 para encerrar"))
    if valor >=1:
        continue
    print("maior que um")
    if valor >= 1:
     print("maior que um")

#Algoritmo que conta quantas vezes se pode reduzir em 1  o valor do número passado como parâmetro até chegar a zero. Ex: número 100.


while True:
 num = int (input("Digite o valor: "))
 cont= 0
 while num >= 0:
    print(num)
    cont = cont +1 # quantas vezes entrou no loop
    num = num -1
    print(cont)


# Desenvolva uma calculadora que solicita qual operação desejada(Multiplicação, Divisão, Adição e Subtração) imprimindo um menu.
# Utilizando "while" o menu ficara ativo até que o usuário digite um comando para interromper. Verifique a partir de testes condicionais qual oção desejada,
# solicite os valores para a operação e efetue o cálculo. Imprima o resultado e retorne ao menu principal.

while True:
    calculadora=int(input("1.Multiplicação\n 2.Divisão\n 3.Adição\n 4.Subtração\n 5.Sair\nDigite a operação desejeda: "))
    
    if calculadora == 1:
        num1 = float(input("Digite o valor 1: "))
        num2 = float(input("Digite o valor 2: "))
        num3= num1*num2
        print(num3)

    elif calculadora == 2:
        num1 = float(input("Digite o valor 1: "))
        num2 = float(input("Digite o valor 2: "))
        num3= num1/num2
        print(num3)

    elif calculadora == 3:
        num1 = float(input("Digite o valor 1: "))
        num2 = float(input("Digite o valor 2: "))
        num3= num1+num2
        print(num3)

    elif calculadora == 4:
        num1 = float(input("Digite o valor 1: "))
        num2 = float(input("Digite o valor 2: "))
        num3= num1-num2
        print(num3)


    elif calculadora == 5:
        print("Saindo")
        break

    else:
        print("Opção Inválida")

# 01 - Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.

while True:
    num=int(input("Digite um valor entre 1 e 10: "))
    
    if num >-1 and num <= 10:
     print(num)
     break

    else:
     print("Opção Inválida")

# Faça um programa  que leia  um nome  de usuário e a sua senha e não aceite a senha igual ao nome de usuário, mostrando uma mensagem de erro e voltando a pedir as informações.

while True:
    nome = input("Digite o seu nome: ")
    senha = input("Digite o sua senha: ")

    if senha == nome:
        print("Inválido")
    
    else:
        print("Válido")
        break

# - 03 - Faça um programa que leia e valide as seguintes informações:
# Nome: maior que 3 caracteres;
# Idade: entre 0 e 150;
# Salário: maior que zero;
# Sexo: 'f' ou 'm' ou 'o';
# Estado Civil: 's', 'c', 'v', 'd';


while True:
    nome = input("Digite o seu nome: ")

    if len (nome) > 3:
        print("válido")
        break
    
    else:
        print("inválido")


while True:
    idade = int(input("Digite o sua idade: "))
    if idade >0 and idade <= 150:
        print(idade)
        break
    else:
        print("Inválido")

while True:
    salario = int (input("Digite o seu salário: "))
    if salario >0:
        print(salario)
        break
    else:
       print("Inválido")

while True:
    sexo = input("Digite seu sexo: ") 

    if sexo == 'f'or 'm':
        if sexo == 'o':
            print(sexo)
        break
    else:
        print("Inválido")

while True:
    estado_civil = input("Digite o seu estado civil: ")
    if estado_civil== 's'or 'c' or 'v' or 'd':
     print(estado_civil)
     break
    else:
       print("Inválido")

