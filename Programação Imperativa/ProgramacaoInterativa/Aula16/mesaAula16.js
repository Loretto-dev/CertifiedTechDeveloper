//FizzBuzz

/*Objetivo
Neste exercício, você terá que criar uma função "FizzBuzz" que recebe dois parâmetros numéricos.
A função deve atender aos seguintes requisitos:
Você deve imprimir os números de 1 a 100;
Se o número a ser impresso for um múltiplo de seu PRIMEIRO parâmetro, você deve imprimir a palavra “Fizz” em vez do número correspondente;
Se o número a ser impresso for um múltiplo do seu SEGUNDO parâmetro, você deve imprimir a palavra "Buzz" em vez do número correspondente;
Se o número for um múltiplo de AMBOS os parâmetros, você deve imprimir a palavra “FizzBuzz”.
*/

const fizzbuzz = (num1,num2, palavra1="Fizz", palavra2 = "Buzz") => {

  for(let i = 1; i <= 100; i++){

    if(i % num1 == 0 && i % num2 == 0){
      console.log(palavra1 + palavra2)
    }else if(i % num1 == 0){
      console.log(palavra1)
    }else if(i % num2 == 0){
      console.log(palavra2);
    }else{
      console.log(i);
    }
  }
}

fizzbuzz(3,5, "Digital", "House");


/*
Micro desafios - Etapa I

O tech leader da equipe precisa criar um código onde seja calculado o número fatorial de um valor inteiro. Para isto, deveremos:

Criar uma função que calcula o fatorial usando loop (for);
Recriar esta mesma função usando recursividade (sem o uso de for)

*/

const fatorial1 = num => {

  let fatorial = 1;

  for(let i = 1; i <= num; i++){
    fatorial *= i; 

  }
  return fatorial;
}

console.log(fatorial1(6))

/*****************************************************/
const fatorial2 = num => {

  let fatorial = 1;

  for(let i = 1; i <= num; i++){
    fatorial *= i; 

  }
  return fatorial;
}

/*****************Recriar esta mesma função usando recursividade (sem o uso de for)***********************************/

console.log(fatorial2(6))

const fatorial3 = num => {
    
  if (num == 3) {
      return 1;
  }
  return fatorial3(num - 1) * num;
}

console.log(fatorial3(0));
