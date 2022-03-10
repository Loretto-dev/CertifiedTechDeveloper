let dia = "domingo";

/* IF Ternário */
/* O IF Ternario é basicamente o if em uma unica linha; ele retorna somente em condições de respostas*/

//? interrogação ele entra como uma pergunta: "o dia é igual a domingo" ? Devolve TRUE
//: dois pontos; devolve FALSE

//      variavel    == é igual a  ? responsta True  :  resposta  False
let resultado = dia == "domingo" ? "Vou a praia": "Fico em casa";

console.log(resultado)


/* Switch */

switch(dia){
    case "segunda":
        console.log("Vou tomar café");
        break; //ele para o programa caso a opção escolhida for essa;
    case "terça":
        console.log("Vou almoçar")
        break;
    case "quarta":
        console.log("Vou ao cinema");
        break;
    case "domingo":
        console.log("Vou ao shopping")
        break;
        default: //defaut é necessário para caso se nenhum case for executado, o defaut sera executado.
}