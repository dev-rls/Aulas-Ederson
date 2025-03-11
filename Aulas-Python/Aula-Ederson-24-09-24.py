# # 01 - Faça um programa que receba uma uma temperatura e transforme de Fahrenheit para Celsius. A formula de conversão de Fahrenheit para Celsius é a seguinte: C= (5/9)*(F-32)

f= float(input("Digite a temperatura em fahrenheit: "))
c = 5*(f-32)/9
print(c)

# # 02 - Faça um programa que leia o nome de um produto, a quantidade comprada, o  valor unitário e o percentual de desconto a ser aplicado para o pagamento.
# #Imprima na tela o nome do produto e o valor total da venda.

produto = input("Digite o nome do produto: ")
quantidade = float(input("Quantidade?: "))
valor = float(input("Qual o valor?: "))
percentual = float(input("Qual a %: "))

total = quantidade*valor - (quantidade*valor*percentual)/100
print(total)

print("Produto: ", produto)
print("Quantidade: ", quantidade)
print("Valor: ", valor)
print("Percentual de desconto: ", percentual)

# # 03 - Faça um programa que leia um valor em reais e calcule o valor equivalente em dólares. O usuário deve informar, além de valor em reais da compra, o valor da cotação do dólar.

r= float(input("Quantidade em real brasileiro: "))
c=float(input("Valor da cotação?: "))
total= r/c
print(total)

# # 04 - Faça um algoritmo em linguagem Python que o nome, idade, sexo, e receba duas notas e cacule a média aritimética e mostre o resultado.
nome=input("Digite seu nome: ")
idade=int(input("Digite sua idade: "))
sexo=input("Digite F para Feminino e M para Masculino: ")
nota1=float(input("Digite a 1ª nota: "))
nota2=float(input("Digite a 2ª nota: "))
total=(nota1+nota2)/2

print("Média:", total)
print("Nome:", nome)
print("Idade:", idade)
print("Sexo: ", sexo)
print("Nota 1:", nota1)
print("Nota 2:", nota2) 

# # 05 - Crie uma programa que receba três valores do usuário. Imprima a soma dos dois primeiros multiplicada pelo terceiro.
user1=float(input("Digite o valor do 1º usuário: "))
user2=float(input("Digite o valor do 2º usuário: "))
user3=float(input("Digite o valor do 3º usuário: "))
total=(user1+user2)*user3
print("Resultado: ", total)

# 06 - Faça um programa em linguagem Python que converta metros para centímetros.
m= float(input("Digite a quantidade em metros: "))
c = m*100
print("Em centímetros:",c)
# # 07 - Tal cadastro solicitará os seguintes dados:(nome, cpf, rg, data do nmascimento, sexo, peso, tipo sanguineo, renda, endereço, telefone, cidade e estado)

# # 08 - Após capturar todos os dados, imprimir em forma de relatório
import os
os.system('cls')
