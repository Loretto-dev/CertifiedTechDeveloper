//inputs
let nomePersonagemReference = document.querySelector('#NomePersonagem')
let habilidadeReference = document.querySelector('#habilidade')
let descricaoReference= document.querySelector('#descricao')
let imagemReference = document.querySelector('#imagem')
//botões
let resetReference = document.querySelector('#reset')
let loginReference = document.querySelector('#login')


loginReference.addEventListener("click",function(event) {
    event.preventDefault()
    let card = {
        nome: nomePersonagemReference.value,
        habilidade: habilidadeReference.value,
        descricao: descricaoReference.value,
        imagem: imagemReference.value
    }
    let containerReference = document.querySelector('.container')
    let cards = [
        containerReference.innerHTML+= 
            `<div>
            <img src="${card.imagem}"></img>
            <h3>${card.nome}</h3>
            <h4>${card.nome}</h4>
            <p> ${card.descricao} </p>
            </div>`
    ]
    cards.push(card)
    console.log(card)
})




