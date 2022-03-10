
//Função IMC com if/else

function calculaImc(altura, peso){
    let imc = peso / altura * altura;
    if(imc < 18.5){
        return "Abaixo do peso" //O return é usado para finalizar a função;
    } else if(imc <= 24.9){
        return "Peso normal";
    } else if(imc <= 29.9){
        return "Sobrepeso";
    } else if(imc <= 34.9){
        return "Obesidade Grau I";
    } else if(imc <= 39.9){
        return "Obesidade Grau II";
    } else{
        return "Obesidade Grau III ou Mórbida"
    }
}
console.log(calculaImc(1.94, 120.0))


/************************************************************/

let seconds = 5.0
switch (seconds) {
    case 5.0:
        break;
    case 5.5:
        break;
}

// IF Tenario usando texto//
let texto = "If Ternario"
let p = `<p> ${texto} </p>`;

console.log(p)

/***************************************************************************/

/* USANDO O SWITCH*/

let diasSemana = "terça"

switch(diasSemana){
    case "segunda":
        console.log(diasSemana);
        break; //Break quebra a sequencia do codigo assim que acha o dado, seu uso é essencial;
    case "terça":
        console.log(diasSemana);
        break;
    case "quarta":
        console.log(diasSemana);
        break;
    default:
        console.log("Não definido");
}
