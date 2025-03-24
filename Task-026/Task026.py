# Faça um programa que leia o nome de um vendedor, o seu salário fixo e o total de de vendas efetuadas por ele no mês(em dinheiro). Sabendo que este vendedor
# ganha 15% de comissão sobre suas vendas efatuadas, informar o total a receber no final do mês, com suas casas decimais.

# Entrada: O arquivo de entrada contémum texto(primeiro nome do vendedor) e 2 valores de dupla precisão(double) com duas casas decimais, representandoo salário
# fixo do vendedor e montante total das vendas efetuadas por este vendedor, respectivamente.

# Saída: Imprima o total que o funcionário deverá receber, conforme exemplo fornecido.

nome_vendedor = input("Digite o nome do vendedor: ")
sal_fixo = float(input("Digite o salário fixo do vendedor: "))
total_vendas = float(input("Digite o total de vendas efetuadas pelo vendedor: "))

comissao = total_vendas *0.15
total_vendas= sal_fixo + comissao

print("Vendedor e Comissão: ",nome_vendedor, total_vendas)
