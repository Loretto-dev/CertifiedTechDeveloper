//ARRAYS

/*Como podemos agrupar muitas informações em uma única variável? 
dados estruturados;
    VARIAVEL INDEXADA, VETOR(unidimensional) ou MATRIZ(multidimensional)
armazena uma coleção de elementos;
os elementos são identificados por indice ou chave;
*/
/*******************************************************************/
//Podem ser adicionados dentro de um array dados do tipo string, numero, boolean ou outros;
let meuArray = ['Star Wars', true, 23]
//Cada elemento de um array ocupa uma posição numerada iniciando do zero 0.
//           = [0, 1, 2]

/*******************************************************************/
let filmesFavoritos = ['Star Wars', 'Kill Bill', 'Alien']

//Acessar posição de um array informando seu nome(variavel) e o numero da sua posição;
filmesFavoritos[2];

//Tamanho de um Array usando o atributo length;
filmesFavoritos.length;
console.log(filmesFavoritos.length)

/*******************************************************************/
//Metodos de Arrays

let cores = ["Roxo", "Laranja", "Azul"]

//push -- Adiciona um ou mais elementos ao final de um array;

cores.push("Violeta") //retorna 4 elementos
console.log(cores) //[ 'Roxo', 'Laranja', 'Azul', 'Violeta' ]

cores.push("Cinza", "Ouro")//retorna 6 elementos
console.log(cores) //[ 'Roxo', 'Laranja', 'Azul', 'Violeta', 'Cinza', 'Ouro' ]

//pop() -- Elimina o último elemento de um array;
let ultimaCor = cores.pop()

console.log(cores) //[ 'Roxo', 'Laranja', 'Azul', 'Violeta', 'Cinza' ] eliminou a cor "Ouro"
console.log(ultimaCor)// retornou a cor eliminada "Ouro"

//shift() -- Elimina o primeiro elemento de um array;
let primeiraCor = cores.shift()

console.log(cores) //[ 'Laranja', 'Azul', 'Violeta', 'Cinza' ] eliminou a cor "Roxo"
console.log(primeiraCor)//retornou a cor eliminada "Roxo"

//unshift() -- Adiciona elementos ao inicio de um array;
cores.unshift("Preto");//adiciona o elemento "Preto" ao inicio do array
console.log(cores)//[ 'Preto', 'Laranja', 'Azul', 'Violeta', 'Cinza' ]

//join() -- Junta os elementos de um array usando separador que especificamos,(caso não especifique, usará virgulas);
let separadosPorVirgula = cores.join()
console.log(separadosPorVirgula)// Preto,Laranja,Azul,Violeta,Cinza

let separadosPorTraco = cores.join(" - ");
console.log(separadosPorTraco)// Preto - Laranja - Azul - Violeta - Cinza

//lastIndexOf() -- Similar ao indexOf(), exceto que ele começa procurando pelo elemento no final do attay (de trás para frente.)
cores.lastIndexOf("Laranja")// retornou o que procurava, retorna 1, que é o indice do elemento encontrado.
console.log(cores.lastIndexOf("Laranja"))
cores.indexOf("Abacaxi") // não encontrou o que procurava, retornou -1
console.log(cores.indexOf("Abacaxi"))

//includes() -- Também similar ao indexOf(), mas retorna um booleano;
cores.includes("Laranja")
console.log(cores.includes("Laranja"))

console.log(cores.includes("Abacaxi"))