/* // Exercicio da montanha russa//
 
function podeSubir(altura,acompanhante){
    if ((altura>=1.40 && altura<2.00)||(altura<1.40&&altura>1.20&&acompanhante)){
        console.log("Pode subir.")
    } else {console.log("Acesso negado.")}
}
podeSubir(1.40,true)

/************************************************************/

/* If Ternario*/
/*
function podeSubir (altura, acompanhada){
    return altura < 1.2 ? "Não pode subir" : altura < 1.4 ? "Pode subir, mas deve ir acompanhada" : altura >= 1.4 && altura < 2 ? "Dentro da Altura" : "Não está na altura";
}
console.log
/***********************************************************/

function podeSubir(altura, acompanhante){
    
    if(altura>=1.40 && altura<2){
        return "Acesso autorizado" ;
    }
    else if (altura<1.40 && acompanhante=="sim"){
        return "Acesso autorizado somente com acompanhante";
    }
    else if (altura<1.40 && acompanhante=="sim"){
        return "Acesso negado.";
    }
    else if (altura<1.2){
        return "Acesso negado.";
    }
    else if (altura>=2){
        return "Acesso negado.";
    }
    }
    console.log(podeSubir(1.4,"sim"))
    

    /*************************************************************************/
//Exercicio do Professor//
    
    function podeSubir(altura, vemAcompanhado){
        let podeSubir = false
      
        if(altura <= 2.0 && altura >= 1.20){
            podeSubir = true
        }
      
        if(altura >= 1.20 && vemAcompanhado){
            podeSubir = true
        }
        return podeSubir
      
      }
      
      /*
      function podeSubir(altura,vemAcompanhado){
      
        //1.39 -> F
        let logica1 = altura <= 2.0 && altura >= 1.40; 
        //1.39 -> V
        let logica2 = altura >= 1.20 && vemAcompanhado;
       
        let or = logica1  logica2;
      
        if(or){
            return true
        }
        else{
            return false
        }
      }
      
      function podeSubir(altura,vemAcompanhado){
        return (altura <= 2.0 && altura >= 1.40)  (altura >= 1.20 && vemAcompanhado)
*/

