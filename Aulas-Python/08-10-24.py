# #Tuplas: a mesma coisa que lista, a diferença é que não consegue mudar o conteúdo. usa ()
# # Diferentemente de listas, as tuplas, uma vez criadas, não permitem modificações. Ou seja seja, tuplas são listas imutáveis.
# # Listas e tuplas podem armanezar: Dados homogêneos(Ex: listas/tuplas de e-mails, salários ou notas).
# # Dados heterogêneos(Ex: cadstro de uma pessoa em uma academia com as informações de nome,idade e peso).

# #Tupla index:
empresas = ("Brasil", "EUA", "Canadá", "Rússia")
print(empresas.index("Rússia"))

# # Operadores de atribuição:
# # x + = y,equivalente a x=x+y

# # x=0
# # x= x+1
# # x=1

# # conectivos Lógicos: Conectivo de conjução: e(and); Conectivo de disjunção: ou(or)


# #só vai dar falso se os dois forem zero no or

# #Identação ":"
x = 100
if x > 0:
    print("X maior que o")

# # False
x = -1
if x > 0:
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
print("Término")


# # True
x = -1
if x < 0:
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
    print("X maior que 0")
print("Término")

idade = 18
if idade < 20:
    print('Você é jovem!')


Age = 18
if (Age>17):
    print("você é maior, já pode dirigir")
    print("Fim. Fora do if")

idade = int(input("Digite sua Idade: "))
if idade >=18: #Caso Verdadeiro
    print("Maior de idade")
else: #Caso falso
    print("Menor de idade")

# #else = senão
idade = int(input("Digite sua Idade: "))
if idade ==16: #Caso Verdadeiro
    print("Pode votar")
else:
    if idade>=16:
        print("Pode Dirigir")
    else:
        if idade <16:
          print("Apenas estude")

#Elif: Adicionalmente, se existir mais de uma condição alternativa que precisa ser verificada, podemos utilizar o elif para
# avaliar as expressões intermediárias antes de usar o else. Em vários ocasiões  é necessário executar blocos alternativa.

idade = int(input("Digite sua Idade: "))
if idade >=16 and idade <18: #Caso Verdadeiro
    print("Pode votar")
elif idade <16:
    print("Apenas estude")
else:
    print("Pode dirigir")

#elif
a = 10
if a >0:
    print("maior")
    if a < 0:
     print("menor")

