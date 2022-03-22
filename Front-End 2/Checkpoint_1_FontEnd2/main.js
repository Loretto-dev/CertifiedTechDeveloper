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
        nome: nomePersonagemReference.value.trim(),
        habilidade: habilidadeReference.value.trim(),
        descricao: descricaoReference.value.trim(),
        imagem: imagemReference.value.trim()
    }
    let containerReference = document.querySelector('.container')
    let cards = [
        containerReference.innerHTML+= 
            `<div class="card">
            <img src="${card.imagem}"></img>
            <h3>${card.nome}</h3>
            <h4>${card.habilidade}</h4>
            <p> ${card.descricao} </p>
            </div>`
    ]
    cards.push(card)
    console.log(card)
})

//function limpar(){
  //  nomePersonagemReference = ''
  //  habilidadeReference = ''
  //  descricaoReference = ''
//    imagemReference = ''
//}

//resetReference.addEventListener('click', limpar())





