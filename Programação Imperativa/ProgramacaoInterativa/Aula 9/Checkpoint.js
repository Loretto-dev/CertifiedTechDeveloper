/*

Grupo 2

Elivelton Alves
Filipe Campos
Elissandro Maciel
Fabiana Yumi
Rafael Vilela
Davi Aponus

*/

function menuMicroondas(tempo, choice){ //

    //Variaveis do tempo de cada produto;
    const pipoca = 10;
    const macarrao = 8;
    const carne = 15;
    const feijao = 12;
    const brigadeiro = 8;

    //Variavel do tipo de produto escolhido;
    let produtos = ['pipoca']; ['macarrao']; ['carne']; ['feijao']; 'brigadeiro';

    //Mecanica do produto escolhido;
    if(choice != produtos){
        return "Prato inexistente"
    }


    //Mecanica tempo insuficiente;
    if (tempo == pipoca && choice == 'pipoca'){             
        return "Prato pronto, bom apetite!!!";
    }else if(tempo == macarrao && choice == 'macarrao'){
        return "Prato pronto, bom apetite!!!";
    }else if(tempo == carne && choice == 'carne'){
        return "Prato pronto, bom apetite!!!";
    }else if(tempo == feijao && choice == 'feijao'){
        return "Prato pronto, bom apetite!!!";
    }else if(tempo == brigadeiro && choice == 'brigadeiro'){
        return "Prato pronto, bom apetite!!!";
    //Mecanica tempo insuficiente;
    }else if (tempo < pipoca && choice == 'pipoca'){             
        return "Tempo Insuficiente";
    }else if(tempo < macarrao && choice == 'macarrao'){
        return "Tempo Insuficiente";
    }else if(tempo < carne && choice == 'carne'){
        return "Tempo Insuficiente";
    }else if(tempo < feijao && choice == 'feijao'){
        return "Tempo Insufuciente"
    }else if(tempo < brigadeiro && choice == 'brigadeiro'){
        return "Tempo Insuficiente"
    //Mecanica Comida Queimou
    }else if(tempo >= pipoca * 2 && choice == 'pipoca'){  
            return "Comida Queimou";
    }else if(tempo >= macarrao * 2 && choice == 'macarrao'){
            return "Comida Queimou";
    }else if(tempo >= carne * 2 && choice == 'carne'){
            return "Comida Queimou";
    }else if(tempo >= feijao * 2 && choice == 'feijao'){
            return "Comida Queimou";
    }else if(tempo >= brigadeiro * 2 && choice == 'brigadeiro'){
            return "Comida Queimou";
    //Mecanica Kabumm
    }else if(tempo >= pipoca * 3 && choice == 'pipoca'){    
        return "Kabumm";
    }else if(tempo >= macarrao * 3 && choice == 'macarrao'){
        return "Kabumm";
    }else if(tempo >= carne * 3 && choice == 'carne'){
        return "Kabumm";
    }else if(tempo >= feijao * 3 && choice == 'feijao'){
        return "Kabumm";
    }else if(tempo >= brigadeiro * 3 && choice == 'brigadeiro'){
        return "Kabumm";
    }
    
console.log(menuMicroondas(10,'macarrao'))
}
