let botaoReferencia = document.querySelector('button')
let inputNomeReferencia = document.querySelector('input')

//Objeto literal
let usuario = {
    nome:'',
    idade: 28
}

//JSON
let usuarioJSON = {
    "nome": "Loretto",
    "idade": 28
}

botaoReferencia.addEventListener('click', function(){

    let usuario = {
        nome: inputNomeReferencia,
        idade: 21
    }

    let posts = [
        {
            titulo: 'gdfhjhfg',
            descricao: 'dasdgdfgf',
            imagem: 'https://dasdgfdg.asdsdgdfg.com',
        }
    ]

    localStorage.setItem('dados,Uusuario', usuario)

    localStorage.setItem('nomeUsuario', inputNomeReferencia.value)

    location.href = 'home.html'


})