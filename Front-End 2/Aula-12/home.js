let nomeUsuarioReferencia = document.querySelector('b')
let dadosUsiario = JSON.parce(localStorage.getItem('dadosUsuario'))

nomeUsuarioReferencia.innerHTML = dadosUsiario.nome