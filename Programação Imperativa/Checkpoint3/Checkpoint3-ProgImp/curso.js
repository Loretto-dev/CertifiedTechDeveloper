//Checkpoint 3 - Elivelton Alves Viveiro
//Turma 2 - Noturno

let aluno = require("./checkpoint3");

const alunoNovo = new aluno.construAlunos('Mariana', 3, [10,7,7]);//Aluno novo;
const alunoNovo2 = new aluno.construAlunos('Roberto', 8, [6,9,10]);//Aluno novo;

let alunos =  aluno.listaAlunos;

let curso = {
    nomeDoCurso:'CTD',//Nome do curso
    notaDeAprovacao: 7,//Nota para aprovação ;
    faltasMaxima: 6, //Quantidade máxima de faltas permitidas;
    listaEstudantes: aluno,//Lista de alunos
    novoAluno: alunos.push(alunoNovo, alunoNovo2),//Adicionar novos alunos; */

    aprovação:function(n1=true, n2=false){  //Função que verifica se o aluno aprovou ou reprovou;
        for(i = 0; i < aluno.listaAlunos.length; i++){
            if(aluno.listaAlunos[i].calcularMediaS() > curso.notaDeAprovacao && aluno.listaAlunos[i].faltas < curso.faltasMaxima){
                n1 = console.log(`O aluno ${aluno.listaAlunos[i].nome} foi Aprovado, parabéns!`)
            }else if(aluno.listaAlunos[i].faltas == curso.faltasMaxima && aluno.listaAlunos[i].calcularMediaS() >= 1.1 * curso.notaDeAprovacao){
                n1 =console.log( `O aluno ${aluno.listaAlunos[i].nome} foi Aprovado, passou raspando ein!`)
            }else{
                n2 = console.log(`O aluno ${aluno.listaAlunos[i].nome} foi Reprovado, precisa estudar mais!`)
            }
        }
    },
    listaResultado: function(){//Função para listar o resultado dos alunos aprovados e reprovados;
        lista = [];
        for(i = 0; i < aluno.listaAlunos.length; i++){
            lista.push(curso.aprovação(this.listaEstudantes[i]))
        }
        return lista;
    },
};

console.log(`O nome do curso é ${curso.nomeDoCurso}`);//Nome do curso;

console.log(`A nota de corte é ${curso.notaDeAprovacao}`);//Nota de corte para aprovação;

console.log(`O máximo de faltas permitidas é ${curso.faltasMaxima}`);//Máximo de faltas permitidas;

console.log(`Os novos alunos são ${aluno.listaAlunos[7].nome} e ${aluno.listaAlunos[8].nome}`);//Lista de novos alunos;

curso.listaResultado(); //Lista de alunos aprovados e reprovados;