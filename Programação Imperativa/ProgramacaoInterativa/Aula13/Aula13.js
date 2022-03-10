
//****************************Objeto**************************************/

//Objeto: usado em uma variavel com {} bigoda!!!!!!!! Ai vc coloca os atributos da variavel dentro dela//

let carro = {
    Nome: "Fiesta",
    Ano: 2011,
    Fipe: 21000,
    Portas: 4,
    ligar: function(){ //Sim, há como fazer uma função dentro de uma variavel
        console.log("O carro " + this.Nome + " está ligado")// this: ele puxa a variavel desejada que dentro da variavel
    }
};

carro.ligar()

console.log("Carro: " + carro.Nome + "Ano: " + carro.Ano + " Preço da Tabela Fipe em 2021: " + carro.Fipe)

//**************************Construtor de objetos**********************************************//

//Função Construtor
function Carro(nomeCarro, anoCarro){ //O nome das funçoes construtora deve sempre iniciar em Maiusculo, no caso é: Carro
    this.nome = nomeCarro; //atribuindo this para chamar função na variavel
    this.ano = anoCarro; //atribuindo this para chamar função na variavel
}

//Aqui colocamos a tag new para chamarmos a função construtor dentro da variavel
let civic = new Carro("Civic", "2008"); //com o new  conseguimos colocar chamar a função, e dar valor aos parametros
let peugeot = new Carro("Peugeot 307", "2020");
let argo = new Carro("Argo", "2018");

//Depois printamos as variaveis
console.log(civic, argo, peugeot)



/* 
let meuPais = {
    nome: "Brasil",
    Populacao: 220000,
    capital: "Brasilia"
/*     dizerNacionalidade: function(){
        return "Nasci em " + this.nome
    }
}; */


//Json// Propriedade que converte o valor das variaveis

let pessoa = {
    nome:"Elivelton",
    altura: 1.94,
    idade: 28
}

//metodo stringfy - recebe um array ou um objeto literal e retorna uma string do tipo JSON
let json = JSON.stringify(pessoa);

//Método .parse - recebe um dado(texto no formato JSON)e retorna um array ou um objeto literal
let json2 = JSON.parse(json);

console.log(json)
console.log(json2)