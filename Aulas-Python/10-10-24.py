#App Bancário: 
senha = int(input("Digite sua senha: "))
if senha ==6789:
    print("1.Extrato\n" "2.Depósito\n" "3.Saque\n""4.Sair\n")

extrato=0.0
opcao=int(input("Escolha uma opção: "))
if opcao == 1:
    print(extrato)

elif opcao == 2:
    deposito=int(input("Digite o valor do seu depósito: "))
    extrato=extrato+deposito
    print(extrato)

elif opcao == 3:
    saque=int(input("Digite o valor do saque: "))
    saque=extrato-saque
    print(extrato)

elif opcao == 4:
 sair=int(input("Sessão Encerrada"))

else:
     print("Senha Inválida")

