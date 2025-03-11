import matplotlib.pyplot as plt

a = (1,2,3,4,5)
b = (1,2,3,4,5)
plt.plot(a,b)
plt.show()

import matplotlib.pyplot as plt

a = (1,2,3,4,5)
b = (1,2,3,4,5)
plt.plot(a,b)
plt.ylabel(u'Alguns Números y')
plt.ylabel(u'Alguns Números x')
plt.show()

import matplotlib.pyplot as plt

x = (0,1,2,3,4,5,6)
y = (0,1,2,3,4,5,6)
plt.xlabel('Eixo x')
plt.ylabel('Eixo y')
plt.title('Meu Gráfico')
plt.plot(x,y)
plt.show()

import matplotlib.pyplot as plt
plt.plot((1,2,3,4),(1,4,9,16),'mD:')
plt.show()

import matplotlib.pyplot as plt
plt.plot((1,2,3,4),(1,4,9,16), 'mD:')
plt.axis((0,6,0,20))

import matplotlib.pyplot as plt
a = (1,2,3,4,5)
b = (1,2,3,4,5)
d = (2,2,5,4,5)
e = (2,4,3,4,5)
plt.subplot(1,2,1)
plt.plot(a,b)
plt.subplot(1,2,2)
plt.plot(d,e)
plt.show()

import matplotlib.pyplot as plt
a = (1,2,3,4,5,6)
b = (2,4,6,8,10,12)
plt.scatter(a,b)
plt.show()

import matplotlib.pyplot as plt
a = (1,2,3,4,5,6)
b = (2,4,6,8,10,12)
plt.bar(a,b)
plt.show()

import matplotlib.pyplot as plt
a = (1,2,3,4,5,6)
b = (2,4,6,8,10,12)
plt.hist(a,b)
plt.show()

import matplotlib.pyplot as plt
a=(10,20,30)
explode=(0.1,0,0)
labels = ["HB20", "Gol", "Fusca"]
plt.pie(a, explode=explode,
labels=labels,autopct='%.2f%%', shadow=True)
plt.title('Meu Grafico')
plt.grid(True)
plt.show()
