Circuit aritmetic de adunare-scadere.

Descriere circuit TOP : 
(3 semnale de intrare , 3 semnale de iesire) 

Semnale in : 
	OBS : MODE - semnal de control al sistemului
	1. MODE (dim 1 bit) = 0 , atunci circuitul efectueaza operatia de adunare X+Y iar rezultatul adunarii este furnizat pe iesirea S.
	   MODE (dim 1 bit) = 1 , atunci circuitul efectueaza operatia de scadere X-Y iar rezultatul scaderii este furnizat pe iesirea S.
	2. X (dim 4 bit )- Operandul X
	3. Y (dim 4 bit)- Operandul y		

Semnale out : 
	1. OVU = semnalizeaza prin activare in 1 depasirea capacitatii de reprezentare a rezultatului.(daca valorile operanzilor sunt numere intregi fara semn)
	2. OVS = semnalizeaza prin activare in 1 depasirea capacitatii de reprezentare a rezultatului.(daca valorile operanzilor sunt numere intregi cu semn)
	3. S (dim 4 biti) = rezultatul operatiei


OBS : Reprezentarea numerelor intregi cu semn in cod complement fata de 2 .
	- in cazul numerelor pozitive este identica cu reprezentarea in cod binar.
	- in cazul numerelor negative , se realizeaza in 3 etape :
	Exemplu:
	1.|x| =  0000 0110 = 6 
	2.~|x|=  1111 1001
	3.~|x|+1=1111 1010 = -6

Module : 
	ADDSUB  - TOP module
	addSub1b - strucutura circuitului adunare/scadere pe 1 bit
	add1b - celula sumator elementar pe 1b.
