//seleciona o elemento de uma tag;
console.dir(document.getElementsByTagName('h1'))
//seleciona o elemento de uma classe;
console.dir(document.getElementsByClassName('teste'))
//seleciona o elemento de um id;
console.dir(document.getElementsById('tituloPrincipal'))

//seleciona qualquer elemento, sendo ele o primeiro do código;
console.dir(document.querySelector('h1'))
console.dir(document.querySelector('#h1'))
console.dir(document.querySelector('.h1'))


var tituloPrincipal = document.querySelector('#tituloPrincipal')

//style. ; 
tituloPrincipal.style.color = 'red';
