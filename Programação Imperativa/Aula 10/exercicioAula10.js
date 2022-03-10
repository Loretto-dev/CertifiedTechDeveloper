//Lista de compras
/*Crie um array que contenha nomes de produtos para compra. 

Após isso, exiba no console os resultados das funções relacionadas aos arrays, que são:
 Join, Pop, Push, Shift e Unshift. 

Também se deve escrever com suas palavras, o que cada função realiza. Seguem abaixo alguns exemplos.

console.log(“O método Join realiza tal coisa”)
console.log(RESULTADO_DO_JOIN)
*/
let listaCompras = ['abacaxi', 'banana', 'laranja', 'iogurte'];

if(listaCompras.length < 2){
    console.log("Produto faltante")
}

console.log()
console.log(listaCompras.join)
console.log(listaCompras.pop)//elimina elemento no final
console.log(listaCompras.push) //adiciona elemento no final
console.log(listaCompras.trim())
console.log(listaCompras.shift)//elimina elemento no começo
console.log(listaCompras.unshift)//adiciona elemento no começo
console.log(listaCompras.indexOf)
console.log(listaCompras.lastIndexOf)
console.log(listaCompras.replace())
console.log(listaCompras.replaceAll())
console.log(listaCompras.split())

let arrayStrings = ['abacaxi', 'banana', 'laranja', 'iogurte'];
let arrayNumeros = [0,1,2,3,4,5];
let arrayBoolean = [true, false, true, true, false];
let arrayMisto = ['abacaxi', false, 'laranja', 7, true];
