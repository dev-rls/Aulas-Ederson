'''Desenvolva um algoritmo com os candidatos a eleição no municipio de Campo Grande'''

import matplotlib.pyplot as plt

nomes = [
    'Adriane Lopes (PP)', 'Beto Figueiró (Novo)', 'Beto Pereira (PSDB)', 'Camila Jara (PT)', 
    'Jorge Batista (PCO)', 'Luso Queiroz (PSol)', 'Rose Modesto (União Brasil)', 'Ubirajara Martins (DC)'
]
votos = [140913, 10885, 115516, 41966, 0, 3108, 131525, 1067]

plt.bar(nomes, votos, color="green")
plt.title("Eleições Prefeitura CG 2024")
plt.xlabel("Candidato")
plt.ylabel("Votos")
plt.xticks(rotation=45)
plt.show()

