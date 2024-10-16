# 01 - Escreva um programa para ler 2 valores(considere que não serão informados valores iguais) e escrever o maior deles.
a = float(input("Digite o 1º valor: "))
b = float(input("Digite o 2º valor: "))
if a > b:
     print("O maior valor é : {a}")
else:
     print("O maior valor é : {b}")

# # 02 -  Escreva um programa para ler o ano de nascimento de uma pessoa e escrever uma mensagem  que diga se ela poderá ou não votar este ano
# # (não é necessário considerar o mês que ela nasceu).

ano_atual=2024
ano_nasc = int(input("Digite ano de nascimento: "))
idade = ano_atual - ano_nasc
if idade >= 16:
      print("Pode votar")
else:
     print("Não pode votar")

# # # 03 - Escreva um programa que verifique a validade de uma senha fornecida pelo usuário. A senha válida é o número 1234. Devem ser impressas as seguintes
# # # mensagens: ACESSO PERMITIDO caso a senha seja válida. ACESSO NEGADO caso a senha seja inválida.


senha = int(input("Digite sua senha: "))
if senha==1234: 
    print("ACESSO PERMITIDO")
else:
     print("ACESSO NEGADO")

# # # Maças custam R$ 0,30 cada se forem compradas menos do que uma dúzia, e R$ 0,25 se forem compradas pelo menos doze. Escreva um programa que leia o número
# # # número de mças compradas, calcule e escreva o valor total da compra.

macas = float(input("Digite a quanttidade de maçãs: "))
if macas < 12:
     x=macas *0.30
     print(x)
elif macas >= 12:
     x=macas*0.25
     print("O valor", x)

# # # Escreva um programa para ler 3 valores inteiros(Considere que não serão lidos valores iguais) e escrevê-los em ordem crescente.
a = float(input("Digite um número: "))
b = float(input("Digite outro número: "))
c = float(input("Digite outro número: "))

if a<b and c<b:
    print(a,b,c)
elif a<c and c<b:
    print(a,c,b)
elif b<a and a<c:
    print(b,c,a)
elif c<a and a<b:
    print(c,a,b)
elif c<b and b<a:
    print(c,b,a)
