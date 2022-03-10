function menuMicroondas(choice, tempo){

    //Variaveis do tempo de cada produto;
    let pipoca = 10;
    let macarrao = 8;
    let carne = 15;
    let feijao = 12;
    let brigadeiro = 8;

    //Variavel do tipo de produto escolhido;
    let produtos = 'pipoca'; 'macarrao'; 'carne'; 'feijao'; 'brigadeiro';

    //Mecanica do produto escolhido;
    if(choice != produtos){
        return "Prato inexistente"
    }

    //Mecanica do tempo escolhido;
    if ((tempo < pipoca) && (tempo < macarrao) && (tempo < carne) && (tempo < feijao) && (tempo < brigadeiro)){
        return "Tempo Insuficiente";
        
    }else if ((tempo = pipoca) && (tempo = macarrao*macarrao) && (tempo = carne*carne) && (tempo = feijao*feijao) && (tempo = brigadeiro*brigadeiro)){
        return "Comida queimou";
        
    }else  if ((tempo > pipoca * 3) && (tempo > macarrao * 3) && (tempo > carne * 3) && (tempo > feijao * 3) && (tempo > brigadeiro * 3)) {
        return "Kabumm";
    }else
        return "Prato pronto, bom apetite!!!"
}
console.log(menuMicroondas('carne', 16))