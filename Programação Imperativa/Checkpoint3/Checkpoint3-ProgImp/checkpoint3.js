//Checkpoint 3 - Elivelton Alves Viveiro
//Turma 2 - Noturno

function Aluno(_nome,_faltas,_notas){ //Função construtora
    this.nome = _nome
    this.faltas = _faltas
    this.notas = _notas
    
    this.calcularMediaS = function(){ //Função para calcular média das notas do aluno selecionado
        let soma = this.notas.reduce(function(valorInicial, acumulador){ 
            return valorInicial + acumulador;
        })
        let tamanhoArray = this.notas.length
        return soma/tamanhoArray
    }

    this.aumentaFaltas = function(faltasM){ //Função para aumentar as faltas em + 1
        return faltasM = this.faltas + 1;
    }
};

//Alunos
const aluno1 = new Aluno('Maicon', 1, [6,9,10]);
const aluno2 = new Aluno('André', 6, [7,9,9]);
const aluno3 = new Aluno('Lucas', 4, [10,8,9]);
const aluno4 = new Aluno('Felipe', 2,[6,8,6]);
const aluno5 = new Aluno('Ana', 5, [10,10,10]);
const aluno6 = new Aluno('Patricia', 4, [8,7,9]);
const aluno7 = new Aluno('Daiane', 6, [7,9,8]);

//Array com os alunos
const alunos = [aluno1,aluno2,aluno3,aluno4,aluno5, aluno6, aluno7];

module.exports = {
    construAlunos: Aluno,
    listaAlunos: alunos,
}

