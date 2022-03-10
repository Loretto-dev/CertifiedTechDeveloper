// Tem-se um conjunto de dados contendo a altura e o 
// sexo (M ou F) de 5 pessoas. 

function Pessoa(_altura,_sexo,_nome, _idade, _opiniao){
    this.altura = _altura
    this.sexo = _sexo
    this.nome = _nome
    this.idade = _idade
    this.opiniao = _opiniao
}

/*const pessoa1 = new Pessoa(1.80,'M','Pessoa M 1');
  const pessoa2 = new Pessoa(1.70,'F','Pessoa F 1');
  const pessoa3 = new Pessoa(1.60,'M','Pessoa M 2');
  const pessoa4 = new Pessoa(1.93,'M','Pessoa M 3');
  const pessoa5 = new Pessoa(1.75,'F','Pessoa F 2'); */
  
/*   const pessoas = [pessoa1,pessoa2,pessoa3,pessoa4,pessoa5]; */
  
//*********PESSOAS ALEATÓRIAS************//
let pessoas = [];
for(let i = 1; i <= 100; i++){
//Math.ramdom() = gera numero aleatório entre 0 e 1
  let numeroAleatorio = Math.random() + 1;
  let altura = numeroAleatorio;
  let sexo = altura < 1.5 ? "F" : "M";
  let nome = 'Pessoa' + i;
  let idade = ((100 - 12)*numeroAleatorio + 12) | 0;
  let opiniao = numeroAleatorio<0.33 ? '1' : numeroAleatorio >= 0.33 && numeroAleatorio < 0.66 ? '2' : '3'
  const pessoa = new Pessoa(altura, sexo, nome, idade, opiniao);
  pessoas.push(pessoa);
}

console.log(pessoas);

  //Faça um programa que calcule e escreva:  
  // a maior e a menor altura do grupo;
  // a média de altura das mulheres;
  // o número de homens.
  
  
module.exports = {
    pessoas:pessoas,
    //a maior e a menor altura do grupo;
    maiorEMenorAltura:function(){
      let pessoasOrdenadas = this.pessoas.sort(function(primeiraPessoa,segundaPessoa){
        return segundaPessoa.altura - primeiraPessoa.altura;
      });
      // let primeiro = this.pessoas[0];  
      let maior = pessoasOrdenadas[0]; 
      let menor = pessoasOrdenadas[pessoasOrdenadas.length - 1];
      
      // let alturaMaior = primeiro.altura;
      // // let alturaMenor = primeiro.altura;
      
      // for(let pessoa of this.pessoas){
          
      //   if(pessoa.altura > alturaMaior){
      //       alturaMaior = pessoa.altura;
      //       maior = pessoa;
      //     }
  
      //     if(pessoa.altura < alturaMenor){
      //       alturaMenor = pessoa.altura;
      //       menor = pessoa;
      //     }
      // }
  
      console.log(maior);
      console.log(menor);
      //const maior = 
    },
    // a média de altura das mulheres;,
    mediaMulheres:function() {
      let qtdMulheres = 0;
      let somaAlturasMulheres = 0;
  
      for(let pessoa of this.pessoas){
        if(pessoa.sexo === "F"){
          qtdMulheres = qtdMulheres + 1;
          somaAlturasMulheres += pessoa.altura;
        }
      }
      //media = Soma/Quantidade
      console.log(somaAlturasMulheres/qtdMulheres);
  
    },
    //// o número de homens.
    qtdHomens:function() {
      let qtd = 0;
      for(let pessoa of this.pessoas){
        if(pessoa.sexo === 'M'){
          qtd++;
        }
      }
      console.log(qtd);
  
    },//média da idade das pessoas que responderam ótimno; 
    mediaDaIdadePessoaOtimo:function(){
        let contadorOtimo = 0;
        let somaDasIdades = 0;

        for(let pessoa of this.pessoas){
            if (pessoa.opiniao == '3'){
                contadorOtimo++;
                somaDasIdades+= pessoa.idade;
            }
        }

        const media = somaDasIdades/contadorOtimo;
        console.log(media);
    },
      // a quantidade de pessoas que responderam regular;
    quantidadePessoasRegular:function(){
        let contadorRegular = 0;
        for(let pessoa of this.pessoas){
        if(pessoa.opiniao == '1'){
            contadorRegular++;
        }
        }
        return contadorRegular;

  },



// a porcentagem de pessoas que responderam bom entre todos os espectadores analisados.

    porcentagemBom:function() {
        let contadorBom = 0;
        for(let pessoa of this.pessoas){
        if(pessoa.opiniao == '2'){
            contadorBom++;
        }
        }
        return (contadorBom/this.pessoas.length)*100;
  }

};


  // exports.pessoas = pessoas;
  // exports.myFunc = function() {
  
  // }