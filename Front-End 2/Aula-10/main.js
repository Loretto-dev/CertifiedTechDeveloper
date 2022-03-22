let inputNomeReferencia = document.querySelector('#inputNome')
let inputTermosReferencia = document.querySelector('#inputTermos')
let botaoConcluirCadastroReferencia = document.querySelector('#botaoConcluirCadastro')
let inputsTipoPessoaReferencia = document.getElementsByName('tipoPessoa')
let usuario = {}

botaoConcluirCadastroReferencia.addEventListener('click', function(event){

    event.preventDefault()

    usuario.nome = inputNomeReferencia.value.trim()
    usuario.aceitouTermos = inputNomeReferencia.checked

    //console.log(usuario)

    for(let inputTipoPessoa of inputsTipoPessoaReferencia) {

        if(inputTipoPessoa.checked) {

            usuario.tipoPessoa = inputTipoPessoa.value
        }


        //console.log(tipoPessoa.checked)
    
    }


})
