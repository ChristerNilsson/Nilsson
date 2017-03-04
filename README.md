# Nilsson

Funktionalitet f�r att underl�tta anv�ndandet av p5.

| Nilsson        | Motsvarighet i p5 |
| -------------- |---------------    | 
| fc()           | noFill() |
| fc 0.5         | fill 128 |
| fc 1,1         | fill 255,255 |
| fc 1,0,0       | fill 255,0,0 |
| fc 1,1,1,1     | fill 255,255,255,255 |
|       			   |          |
| sc() 				   | noStroke() |
| sc 1           | stroke 255 |
| sc 1,1         | stroke 255,255 |
| sc 1,1,1       | stroke 255,255,255 |
| sc 1,1,1,1     | stroke 255,255,255,255 |
|       			   |          |
| bg 1           | background 255 |
| bg 1,1         | background 255,255 |
| bg 1,1,1       | background 255,255,255 |
| bg 1,1,1,1     | background 255,255,255,255 |
|       			   |          |
| sw n				   | strokeWeight n |
| circle x,y,r   | ellipse x,y,2*r |
| rd degrees     | rotate radians degrees |
| range          | _.range  |
| print          | console.log |
|       			   |          |
| assert a,b     | Anropar print om a!=b. Klarar �ven djupa listor. |
| fixColor args  | Omvandlar f�rger fr�n 0-1 till 0-255. |
| getParameters  | H�mtar parametrar fr�n anropande URL |
| compare a,b    | J�mf�r tv� liststrukturer djupt och returnerar -1,0 eller 1. Jmf <=>  |
| bsort list,cmp=compare | Sorterar en lista. Man kan definiera en egen compare.  |