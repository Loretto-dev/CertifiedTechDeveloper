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

    //Mecanica do produto escolhido;

   /*==================================================================================== 
    Para quebrar este codigo ativar o IF abaixo se quer que funcione deixe como esta
    =====================================================================================*/ 
    
    //Mecanica do tempo escolhido;

    if ((choice == 'pipoca' && tempo == pipoca) || (tempo == macarrao && choice == 'macarrao') || (tempo == carne && choice == 'carne') || (tempo == feijao && choice == 'feijao') || (tempo == brigadeiro && choice == 'brigadeiro')){
       console.log("Prato pronto, bom apetite!!!");
    }

    else if ((choice == 'pipoca' && tempo < pipoca) || (tempo < macarrao && choice == 'macarrao') || (tempo < carne && choice == 'carne') || (tempo < feijao && choice == 'feijao') || (tempo < brigadeiro && choice == 'brigadeiro')){
        console.log("Tempo Insuficiente");
    }

    else if  ((tempo >= pipoca*2 && tempo < pipoca*3 && choice == 'pipoca') || (tempo >= macarrao*2 && tempo < macarrao*3 && choice == 'macarrao') || (tempo >= carne*2 && tempo < carne*3 && choice == 'carne') || (tempo >= feijao*2 && tempo < feijao*3 && choice == 'feijao') || (tempo >= brigadeiro*2 && tempo < brigadeiro*3 && choice == 'brigadeiro')){
        console.log("Comida queimou");
    }

    else  if  ((tempo >= pipoca*3 && choice == 'pipoca') || (tempo >= macarrao*3 && choice == 'macarrao') || (tempo >= carne*3 && choice == 'carne') || (tempo >= feijao*3 && choice == 'feijao') || (tempo >= brigadeiro*3 && choice == 'brigadeiro')){
        console.log("Kabumm");
        
    }

    else
    return "Prato inexistente !!!";

}

/* ========================================================================================================
 Para testar preencher neste painel digital ultra hi-tech abaixo os detalhes do seu Menu que vamos preparar
  =========================================================================================================*/


console.log(menuMicroondas(12,'brigadeiro'))