//Funções: conjunto de instruções que se repetem;

function qtdeComida (quantidade){ //função: qtdeComida - Parametro: quantidade
    console.log("comprando comida")
    let preco = quantidade * 12;
    console.log(preco)
}
//Chamada da função: é presico chamar a função para a mesma ser executada, senão ela não executa

//qtdeComida(2);//é preciso DEFINIR o parametro, no caso foi 2;

function calculaPreco(){
    return quantidade * 12.50
}

qtdeComida(2);