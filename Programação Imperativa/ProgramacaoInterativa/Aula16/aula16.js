//Arrow Functions - São funções atribuidas a variaveis que são escritas de forma diferente
//É como uma função tradicional escrita de uma forma abreviada e limpa

//Aqui o somar recebe () =>, e não precisa escrever "function", e dentro dos parenteses pode colocar um parametro   
const exemplo = () =>{

}
//Aqui colocamos um console dentro da arrowfuction e não precisamos usar as chaves{} por estar na mesma linha**
const somar = () => console.log("Estou em uma arrow function")
somar();

//arrow function com um unico parametro = numero
const somar1 = numero => console.log("Recebi um numero " + numero)
somar1(20);

//arrow function com dois parametros(numeroA e numeroB)
const somar2 = (numeroA, numeroB) => console.log("Recebi um numero " + numeroA + " e o Numero " + numeroB)
somar2(20,30)

//arrow function com chaves{}, pois teve mais que uma linha
const somar3 = (numeroA, numeroB) => {
    console.log("Recebi um numero " + numeroA + " e o Numero " + numeroB)
    return numeroA + numeroB

} 
console.log(somar3(20,30));

//arrow function com um unico parametro = numeroD
let dobro = numeroD => numeroD * 2;
console.log("Recebi um numero " + dobro(3))


//arrow function sem parametros e com um return explícito;
let horaAtual = () => {
    let data =new Date();
    return data.getHours()+':'+data.getMinutes();
}

console.log("A Hora atual é " + horaAtual())

//Microdesafio de Arrow function:

let print = () => console.log("Mensagem");
print();

let print2 = () => console.log("Olá, bom dia");
print2();

let soma = (n1, n2) =>{
    return n1 + n2
}
console.log(soma(2,4))

/*************************************************************************/

//Callback - callback é uma função que épassada como parâmetro para outra função
//setTimeout é uma função anônima
setTimeout(() => {console.log("this is the first message")}, 1000);
setTimeout(() => {console.log("this is the first message")}, 1000);
setTimeout(() => {console.log("this is the first message")}, 1000);


const imprimir = texto => console.log(texto);
const imprimir4 = (texto,texto2,texto3) => {
  const concat = texto + texto2 + texto3;
  console.log("Concatenacao da arrow:" + concat);
  return concat;
}; 


const imprimir2 = function (texto) {
  console.log(texto);
}

if(true)
  console.log("")
else
  console.log("");

const teste = {
  imprimir: function(){
  },
  imprimir2: () => {
    
  }
}


console.log("Concatenacao da chamada: " + );
for(let i = 1;i<=10;i++){
  setTimeout(() => {
    console.log("Estamos no segundo:" + i );
  }, i*1000 );
}


const imprimir5 = texto => {
  console.log(texto);
}


const soma = function(numA, numB, callback){
  const soma = numA + numB;
  callback(soma);

}

soma(5,6,imprimir5);


//Exercicio de Calcula Perimetro da Lista (Tipo e Perimetro)
const calculaPerimetro = (lado1,lado2,lado3,callback) => {
    const perimetro = lado1 + lado2 + lado3;
    return {
      tipo: callback(lado1,lado2,lado3),
      perimetro:perimetro
    };
  }
  
  const tipoTriangulo = (lado1,lado2,lado3) => {
    if(lado1 == lado2  && lado1 == lado3){
      //console.log("Equilatero");
      return "Equilatero";
    } else if (lado1 === lado2 || lado2 === lado3 || lado1 === lado3){
      //console.log("Isoceles");
      return "Isoceles";
    } else {
      //console.log("Escaleno");
      return "Escaleno";
    }
  }
  
  const perimetro = calculaPerimetro(5,4,5,tipoTriangulo);
  
  console.log(perimetro);



//setTimeout( imprimir4("1","2","3") , 1000);
// setTimeout(() => {console.log("this is the second message")}, 2000);
// setTimeout(() => {console.log("this is the third message")}, 3000);
  