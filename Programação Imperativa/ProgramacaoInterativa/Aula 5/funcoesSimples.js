
//Calcula polegada para centimetros
function converter(polegadas){
    return polegadas * 2.540
}

console.log(converter(10))

//Converter string em url

function funcaostr(sit){
    let siteCompleto = "http://www."
    let siteCompleto2 = ".com.br"
    return siteCompleto + sit + siteCompleto2
}

console.log(funcaostr("google"))

//Função que retorna uma string com !

function retornaS(sts){
    let exclamacao = "!"
    return sts + exclamacao
}

console.log(retornaS("Frase de efeito"))

//Calcula idade cachorro x humanos

function cachorro(idade){
    return idade * 7
}
console.log(cachorro(2))

//Calcule o valor da sua hora de trabalho, tendo como parâmetro o seu salário mensal

function calculaHora(horaT){
    let salarioTotal = 3250
    return horaT = salarioTotal / 160
}

console.log(calculaHora(1))

//Calculadora de IMC* 

function calculaIMC(totalimc){
    let peso = 118
    let altura = 1.94
    return totalimc = peso / (altura**2)
}

console.log(calculaIMC(1))

//Crie uma função que receba uma string em minúsculas, converta-a em maiúsculas e as retorne. 
//Investigue o que o método de .toUpperCase() faz.

function convertaMM(converMaiusc){
    return converMaiusc.toUpperCase()//toUpperCase: 
}

console.log(convertaMM("elivelton"))


//Função que receba um parâmetro e retorne o tipo de dado deste parâmetro.
//Dica: Isso te ajudará a entender o que o operador typeof faz.

function paramT(recebaPT){
    return typeof recebaPT //typeof: verifica o tipo de variavel, se é string, se é number ou boolean.
}

console.log(paramT("teste"))


//Função pela qual passamos o raio de um círculo e ela retorna a circunferência.
//Dica: Investigue se o objeto Math tem entre suas propriedades o número Pi.

function achandoPI(circulo){
    return circulo
}

console.log(achandoPI(Math.PI)) //Math.PI: mosta o numero do pi