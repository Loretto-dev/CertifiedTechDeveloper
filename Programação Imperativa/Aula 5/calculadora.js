//Calculadora Nível 1

//Função somar
let p1 = 4
let p2 = 2

function adicionar(somar){
    return somar = p1 + p2
}

//Função subtrair
function subtracao(subtrair){
    return subtrair = p1 - p2
}

//Função multiplicar
function multiplicacao(multiplicar){
    return multiplicar = p1 * p2
}

//Função dividir
function divisao(dividir){
    return dividir = p1 / p2
}

//Calculadora Nível 2 - AS 4 FUNÇÕES JUNTAS
console.log ("divisão: " + divisao(1) + " multiplicação: " + multiplicacao(1) + " subtração: " + subtracao(1) + " adição: " + adicionar(1))


//Calculadora Nível 3

//Calcula quadrado do numero
function quadradoDoNumero(quadrado){
    return multiplicar (quadrado, quadrado)
}
console.log("o quadrado do numero é: " + quadradoDoNumero(8))

//Calcula a média de 3 numeros
function mediaDeTresNumeros(n1, n2, n3){
    return n1 + n2 + n3 / 3
}
console.log("a média dos 3 numeros é: " + mediaDeTresNumeros(8,5,7))

//Função calcula Porcentagem
function calculaPorcentagem(vl,pc){
    return pc = pc * vl / 100
}
console.log("o calculo da porcentagem é : " + calculaPorcentagem(200,1))

//Função Gerador de Porcentagem
function geradorDePorcentagem(x,y){
    return x = x / y * 100
}
 console.log("o gerador da porgentagem gerou: " + geradorDePorcentagem(2,200))