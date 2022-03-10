/*Repetir como um papagaio

Crie um loop utilizando for que se repita 5 vezes. 
Dentro de cada repetição se deve mostrar no console a mensagem “Olá mundo”.
*/

/*
for, = para

while, = enquanto

do while = 

continue = 
*/

//for sempre iniciando como zero 0

// CTRL + C = interrompe uma execução de código infinito

let arr = [0,1,2,3,4,5];

//for, = para
for(let i = 0 ; i < 5 ; i++ ){ //LOOP = para let i igual a zero e i menor que 5 some até chegar
    console.log(i)
}


/************************************************/
let contador = 0;
//while, = enquanto
while(contador < 5){
    console.log("Olá mundo " + contador);
    contador ++
}

/***********************************************/
//do while = 
do {
    console.log("Olá mundo " + contador);
    contador ++;

}  while(false)