// Obtenção das referencias dos elementos no HTML
let primeiroNumeroReferencia = document.querySelector('#primeiroNumero')
let segundoNumeroReferencia = document.querySelector('#segundoNumero')
let somarBotaoReferencia = document.querySelector('#somar')
let subtrairBotaoReferencia = document.querySelector('#subtrair')
let multiplicarBotaoReferencia = document.querySelector('#multiplicar')
let dividirBotaoReferencia = document.querySelector('#dividir')
let resultadoReferencia = document.querySelector('#resultado')

function somar(primeiroNumero, segundoNumero) {

    // Atribuindo o resultado da operação para o elemento no HTML
    resultadoReferencia.innerHTML = primeiroNumero + segundoNumero

}



function subtrair(primeiroNumero, segundoNumero) {

    // Atribuindo o resultado da operação para o elemento no HTML
    resultadoReferencia.innerHTML = primeiroNumero - segundoNumero

}



function multiplicar(primeiroNumero, segundoNumero) {

    // Atribuindo o resultado da operação para o elemento no HTML
    resultadoReferencia.innerHTML = primeiroNumero * segundoNumero

}



function dividir(primeiroNumero, segundoNumero) {

    // Atribuindo o resultado da operação para o elemento no HTML
    resultadoReferencia.innerHTML = primeiroNumero / segundoNumero

}



// Função que processa os dados e os encaminha para suas funções baseado no valor do parametro "operacao"
function processar(operacao) {

    // Conversão dos valores contidos no Input utilizando o ".value" e conversão desse mesmo valor para um número utilizando o recurso Number
    let primeiroNumeroTratado = Number(primeiroNumeroReferencia.value)
    let segundoNumeroTratado = Number(segundoNumeroReferencia.value)

    // Switch que identifica qual função chamar bazeado no valor do parametro operacao
    switch(operacao) {

        case 'somar':
            somar(primeiroNumeroTratado, segundoNumeroTratado)
            break

        case 'subtrair':
            subtrair(primeiroNumeroTratado, segundoNumeroTratado)
            break

        case 'multiplicar':
            multiplicar(primeiroNumeroTratado, segundoNumeroTratado)
            break

        default:
            dividir(primeiroNumeroTratado, segundoNumeroTratado)


    }

}



// Aguardando o site inteiro carregado com o window.onload
window.onload = function() {

    // Adicionando um novo evento para o botão de soma
    somarBotaoReferencia.addEventListener('click', function(event) {

        event.preventDefault()
        processar('somar')

    })



    // Adicionando um novo evento para o botão de subtrair
    subtrairBotaoReferencia.addEventListener('click', function(event) {

        event.preventDefault()
        processar('subtrair')

    })



    // Adicionando um novo evento para o botão de multiplicar
    multiplicarBotaoReferencia.addEventListener('click', function(event) {

        event.preventDefault()
        processar('multiplicar')

    })



    // Adicionando um novo evento para o botão de divisão
    dividirBotaoReferencia.addEventListener('click', function(event) {

        event.preventDefault()
        processar('dividir')

    })

}