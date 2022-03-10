/* function soma(a=1, b=3){
    return a+b;
}

console.log(soma());
console.log(soma(3));
console.log(soma(1,2)); */


/* for(var i = 0; i<50; i+=10){
    console.log(i);
}

console.log(i) */

/* function soletrar(texto){
    console.log(texto.replace('-',''). toLocaleUpperCase().split("").join("-"));
}

soletrar("digital_house");
soletrar("ctd"); */

 
let valor = 5;
let fatorial = 1;
for(let i = valor; i <= 5; i++) {
    fatorial *= i;
}

console.log("Fatorial =" + fatorial);


for(let i = valor; i > 1; i--) {
    fatorial *= i;
}

console.log("Fatorial =" + fatorial);