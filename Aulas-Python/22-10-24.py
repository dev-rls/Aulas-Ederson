# 4 - Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de crescimento
# de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5% anual.
# Faça uma programa que calcule e escreva o número de anos necessários para que a população do
# país A ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento.


# a = 80000
# b = 200000

# cont = 0
# while a <= b:
#     a = a +(a*3/100)
#     b = b +(b*1.5/100)
#     cont = cont+1
# print(cont)

# Altere o programa anterior permitindo ao usuário informar as populações e as taxas de crescimento 
# iniciais. Valide a entrada e permita repetir a operação.

# while True:
#     x = int(input("1 - Informar dados\n0 - Sair\n Digite opção: "))
#     if x == 1:
#         a = float(input("Digite a população país A: "))
#         b = float(input("Digite a população país B: "))
#         c = float(input("Digite % país A: "))
#         d = float(input("Digite % país B: "))

#         cont = 0
#         while a <= b:
#             a = a +(a*c/100)
#             b = b +(b*d/100)
#             cont = cont+1
#         print(cont)
#     elif x == 0:
#         break
# print(cont)

# 6 - O sr Manoel Joaquim expandiu seus negócios para além dos de 1,99 e agora possui uma loja de conveniências. 
# Faça um programa que implemente uma caixa registradora rudimentar. O programa deverá receber um número desconhecido 
# de valores referentes aos preços das mercadorias. Um valor zero deve ser informado pelo operador para indicar 
# o final da compra. O programa deve então mostrar o total da compra e perguntar o valor em dinheiro que o cliente 
# forneceu, para então calcular e mostrar o valor de troco. Após esta operação, o programa deverá voltar ao ponto 
# inicial, para registrar a próxima compra. A saída de ser conforme o exemplo abaixo:
 
# while True:
#     x = int(input("1 - Informar valores\n0 - Sair\n Digite opção: "))
#     if x == 1:

#         while True:
#             total = 0
#             precoProduto = float(input("Digite o preço da mercadoria: "))
#             total = total + precoProduto
#             print(total)
#             if total==0:

#                 while True:
#                  total = 0
#             pagamento= float(input("Digite o valor do pagamento: "))
#             if total > pagamento:
#              print("O valor insuficiente")
#             elif total <= pagamento:
#              troco = pagamento - total
#             print("Troco de:", troco)
#             break
#     else:
#         print("Saindo")
#         break

# 9 - Em uma eleição presidencial existem quatro canditos. Os votos são informados  através de códigos. Os dados 
# utilizados para a contagem dos votos obedecem à seguinte codificação: 
# 1, 2, 3, 4 = voto para os respectivos canditados;
# 8 = voto nulo(Qualquer outro número, menos o 0 e os canditados); 
# 6 = voto em branco;

# Elabore um programa que leia o código votado por vários eleitores. Como finalizador da entrada de dados, considere 
# o código zero. Ao final, calcule e escreva:

# * Total de votos para cada candidato;
# * Total de votos nulos;
# * Total de votos brancos;

c1 = 0
c2 = 0
c3 = 0
c4 = 0
nulos = 0
brancos = 0

while True:
   voto = int(input("Digite o número do seu canditado (0 para finalizar): "))
   if voto == 0:
      print("Sessão finalizada")
      break
   if voto == 1:
      c1 = c1 +1
   elif voto == 2:
      c2 = c2 +1
   elif voto == 3:
      c3 = c3 +1
   elif voto == 4:
      c4 = c4 +1
   elif voto == 6:
      nulos = nulos +1
   elif voto == 8:
      brancos = brancos +1
   else:
      print("Código inválido! Voto não contabilizado")
      
print("\nVotos canditado 01: ", c1)
print("\nVotos canditado 02: ", c2)
print("\nVotos canditado 03: ", c3)
print("\nVotos canditado 04: ", c4)
print("\nVotos Nulos: ", nulos)
print("\nVotos Brancos: ", brancos)