'''Desenvolva um algoritmo com os salários minímos de 2000 à 2025, e plot um gráfico com essa representação. Pode ser 
plot, scatter ou bar'''

import matplotlib.pyplot as plt

anos = list(range(2000, 2026))
salarios_minimos = [
    151, 180, 200, 240, 260, 300, 350, 380, 415, 465, 510, 545, 622, 678, 724,
    788, 880, 937, 998, 1045, 1100, 1212, 1320, 1400, 1450, 1500]

plt.plot(anos, salarios_minimos, color="green")
plt.title("Salário Mínimo de 2000-2025 ")
plt.xlabel("Ano")
plt.ylabel("Salário Mínimo (R$)")

plt.show()

