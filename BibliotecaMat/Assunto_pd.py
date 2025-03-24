import pandas as pd

df = pd.read_csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")
print(df.head())

df.set_index('PassengerId',
inplace=True)
print(df.head(12))

''' INDEX IMPORTANTIIIIIIIIÍSSIMO Podemos definir qualquer coluna como índice, usamos o parâmetro
set_index e informamos qual coluna será utilizada. Use o parâmetro inplace=True para que a mudança
seja feita,'''

'''Agora a coluna 'Passegerld' não é somente mais uma coluna, ela passou a ser o Dataframe'''

'''Podemos solicitar que o Pandas nos retorne todas as informações como Name, Sex, Pclass, etc... do primeiro
passageiro.'''

print(df.loc[1])

'''Podemos pedir que ele nos retorne as mesmas informações para vários passageiros.'''

print(df.loc[[1.2,3]])

'''E possível selecionar vários índices e várias colunas de uma vez só. Passamos uma lista com os índices e
uma outra lista com as colunas.'''

print(df.loc[[1,2], ['Name','Sex','Age']])

'''loc também é usado para fazer slice (fatiamento), a sintaxe é df.loc[start : stop], onde o start é o
limite inicial e está incluído na saída e ○ stop é ○ limite final e não é incluído na saída, isso não é
observado no nosso Dataframe pois ○ nosso índice se inicia em 1 e não em zero como na maioria dos casos.
Vamos pedir para ○ pandas nos retornar do 10 ao 20 passageiro.'''

print(df.loc[10:20])

'''No exemplo acima o índice do passageiro foi incrementado de 1 em 1 é o padrão, mas podemos fazer com que 
isso seja incrementado de 2 em 2 por exemplo. A sintaxe é parecida com a anterior só precisamos passar explicitamente
o parâmetro step da seguinte maneira; df.loc[start : stop:step].'''


print(df.loc[10:30:2])

'''Outra maneira de consultar e filtrar os dados é usando o método query(), que possui uma sintaxe
semelhante as queries do SQL, usamos os operadores lógicos AND(&)e OR(|) e expressões lógicas (=, !=, >, <, >= e <=),
 para solicitar dados a partir de uma condição. O resultado da query é passado para um Dataframe.loc e então é nos
retornado o resultado.'''

print(df.query('Age_> 20').head())
print(df.query('Age > 20'))

'''Python-Pandas-query'''


#df.query'('Age> 20 & Sex=="male").head()
         
''' Selecionando os passageiros com idade maior que 20 anos E sexo masculino. Com o operador lógico & as duas condições
precisam ser atendidas obrigatoriamente'''