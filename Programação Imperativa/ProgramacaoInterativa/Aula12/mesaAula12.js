const alice = [ 23, 82, 46 ];
const bob = [ 45, 74, 32 ];

function encontrarGanhador (a, b){
    let pontosA = 0;
    let pontosB = 0;
    let vencedor = "";
    for (let i = 0; i < a.length; i++){
        if(a[i] > b[i]){
            pontosA++;
        }else if(a[i] == b[i]){
            pontosA = pontosA + 0;
            pontosB = pontosB + 0;
        }else if(a[i] < b[i]){
            pontosB++;
        }
    }
    if(pontosA > pontosB){
        vencedor = "Alice";
        console.log(`O vencedor é ${vencedor} !`);
    }else if(pontosB > pontosA){
        vencedor = "Bob";
        console.log(`O vencedor é ${vencedor} !`);
    }else{
        console.log("Deu empate ;(");
    }    
}
encontrarGanhador(alice, bob);
