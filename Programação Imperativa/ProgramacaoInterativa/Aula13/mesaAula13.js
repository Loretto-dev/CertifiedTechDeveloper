/* A partir de um banco eles entram em contato conosco para criar um
aplicativo que possa facilitar o manuseio de informações e facilitar
as ações que ele precisa. 
Nosso líder de tecnologia nos pede para pensar em como representar usuários,
ou contas bancárias, em vez disso. Cada uma dessas contas tem as seguintes informações: */



function DadosContas(titular, tipo, numero, saldo){ //O nome das funçoes construtora deve sempre iniciar em Maiusculo, no caso é: Carro
    this.titular = titular;
    this.tipo = tipo; 
    this.numero = numero;
    this.saldo = saldo;
}


let conta1 = new DadosContas("Abigael Natte", "Conta Corrente", 5486273622, 27771);
let conta2 = new DadosContas("Ramon Connell", "Conta Poupança", 1183971869, 8675);
let conta3 = new DadosContas("Jarret Lafuente", "Conta Poupança", 2138105881, 27363);
let conta4 = new DadosContas("Ansel Ardley", "Conta Poupança", 9582019689, 32415);
let conta5 = new DadosContas("Jacki Shurmer", "Conta Poupança", 1761924656, 18789);
let conta6 = new DadosContas("Jobi Mawtus", "Conta Corrente", 7401971607, 28776);
let conta7 = new DadosContas("Thomasin Latour", "Conta Corrente", 630841470, 2177);
let conta8 = new DadosContas("Lonnie Verheijden", "Conta Poupança", 4223508636, 25994);
let conta9 = new DadosContas("Alonso Wannan", "Conta Corrente", 185979521, 7601);
let conta10 = new DadosContas("Bendite Huggett", "Conta Poupança", 3151956165, 33196);

let contas = [conta1, conta2, conta3, conta4, conta5, conta6, conta7, conta8, conta9, conta10];

console.log(`O cliente ${contas[0].titular}, nº da conta ${contas[0].numero}, conta do tipo: ${contas[0].tipo}, possuí saldo de R$ ${contas[0].saldo}.`)

let banco = {
    clientes: contas,
    consultarClientes: function(titular){ // Estrutura de repetição para verificar nome do titular
        for (let i = 0; i < contas.length; i++) {
            if (contas[i].titular == titular) {
              return contas[i]
            }
        }
    },
    depositos:function (titularD, deposito) {
        let funcaoClientes = this.consultarClientes(titularD);
        funcaoClientes.saldo += deposito
            console.log(`Depósito realizado com sucesso, seu novo saldo é: ${funcaoClientes.saldo}`)
    },
    saque: function(titularS, saque){
        let funcaoClientes = this.consultarClientes(titularS);
        if(funcaoClientes.saldo -= saque){
            console.log(`Saque realizado com sucesso, seu novo saldo é: ${funcaoClientes.saldo}`)
        }else if(funcaoClientes.saldo < saque){
            console.log(`Fundos insuficientes ${funcaoClientes.saldo}`)
        }
    },
}


banco.depositos("Alonso Wannan", 35000)
banco.saque("Lonnie Verheijden", 40000)

