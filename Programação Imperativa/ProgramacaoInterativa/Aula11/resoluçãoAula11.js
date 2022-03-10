/*
Crie um loop utilizando for que se repita 5 vezes. 
Dentro de cada repetição se deve mostrar no console a mensagem “Olá mundo”.
for, while, do while. 
*/
//let arr = [0,1,2,3,4];

// for(let i = 0; i < 5 ; i = i + 1){
//   if(i === 4){
//     continue;
//   }
//   //console.log("Olá mundo " + i);
// }

//let contador = 0;

// do {
//   console.log("Olá mundo " + contador);
//   contador++;
// } while(false)

/* 
Crie um loop for de 1 a 10, em que exiba no console apenas o valor das repetições de números ímpares. Dica: 
A ideia é que nas repetições ímpares de 0 ao 10 (1,3,5,7,9) 
sejam mostrados os números das repetições no console.
*/



// for (let i = 1; i <= 10;i = i++){
//   if(i % 2 != 0){
//     console.log(i);
//   }
  
// }


/*
  Crie uma tabuada utilizando o for. Dica: 
  Para essa tarefa você irá precisar utilizar dois loops (for).
*/

/*  for(let i = 1; i < 10 ; i++){
   console.log(`Tabuada de ${i} \n`);
   for(let j = 1;j< 10;j++){
    console.log(i + "x" + j + " = " + (i*j));
    console.log(`${i} x ${j} = ${i*j}`);
  }
  console.log('\n');
} */
 
//Função para converter string para maiusculos
let arrTexto = ["texto1" , "texto2" , "texto3"];

function converterArrayParaMaisculo(array){

  for(let i = 0; i< arrTexto.length; i++){
    array[i] = array[i].toUpperCase();
  }
  console.log(array);
}

converterArrayParaMaisculo(arrTexto);

/**************************************************************************************************/
//Resolução Bônus Aula 11//

let a = [5, 8, 4, 9, 5];
let b = [8, 7, 8, 6, 8];
let c = [7, 5, 10, 8, 3];


//Função para tirar a média do array;
function media(array){ 
  let soma = 0;
  for(let i = 0; i < array.length; i++){ //for: o for é uma estrutura de repetição, ou seja, ele vai repetir chegar no ultimo elemento do array;
    soma += array[i];
  }
  return soma/array.length; //length = comprimento, ele passa por todo comprimento do array;
}

console.log(media(a))

//Função para verificar o maior elemento do array;
function maior(array){ 
  let maior = array[0];
  for(let i = 0; i < array.length; i++){ 
    if(array[i] > maior){
      maior = array[i];
    }

  }
  return maior; 
}

console.log(maior(c))

//Função para verificar vencedor por média e maior e-tip

function competicao(a,b,c){
  let mediaA = media(a);
  let maiorA = maior(a);

  let mediaB = media(b);
  let maiorB = maior(b);

  let mediaC = media(c);
  let maiorC = maior(c);

  if(mediaA > mediaB && mediaA > mediaC){
    console.log(`Na categoria média o vencedor foi o participante A`)
  }else if(mediaB > mediaA && mediaB > mediaC){
    console.log(`Na categoria média o vencedor foi o participante B`)
  }else if(mediaC > mediaA && mediaC > mediaB){
    console.log(`Na categoria média o vencedor foi o participante C`)
  }else{
    console.log(`Não teve vencedor na média`)
  }

  if(maiorA > maiorB && maiorA > maiorC){
    console.log(`Na categoria maior o vencedor foi o participante A`)
  }else if(maiorB > maiorA && maiorB > maiorC){
    console.log(`Na categoria maior o vencedor foi o participante B`)
  }else if(maiorC > maiorA && maiorC > maiorB){
    console.log(`Na categoria maior o vencedor foi o participante C`)
  }else{
    console.log(`Não teve vencedor no e-tip`)
  }
}

competicao(a,a,a);