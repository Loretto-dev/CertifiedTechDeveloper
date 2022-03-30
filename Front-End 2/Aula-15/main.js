let inputCepRef = document.querySelector('#inputCep')
let inputRuaRef = document.querySelector('#inputRua')
let inputBairroRef = document.querySelector('#inputBairro')
let inputCidadeRef = document.querySelector('#inputCidade')
let inputEstadoRef = document.querySelector('#inputEstado')
let botaoSubmitRef = document.querySelector('button')

botaoSubmitRef.addEventListener('click', event => {

    event.preventDefault()

    console.log(inputCepRef.value)

    fetch(`https://viacep.com.br/ws/${inputCepRef.value}/json/`)
        .then(
            response =>{ 
                console.log(response)
                response.json()
                .then(
                    data => {
                        inputRuaRef.value = data.logradouro
                        inputBairroRef.value = data.bairro
                        inputCidadeRef.value = data.localidade
                        inputEstadoRef.value = data.uf
                        console.log(data)
                    }
                )
    })

})
