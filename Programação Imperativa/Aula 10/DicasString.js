let texto = "Oi eu sou Elivelton"

//lenght -- Retorna o numero total de caracteres; saber o comprimento de uma string
console.log(texto.length);


//indexOF -- retorna a partir da posisão do caractere em que a palavra selecionada começa; para saber se a string existe
console.log(texto.indexOf("Elivelton"))


//slice -- retorna os caracteres selecionando a posição inicial e a posição final; serve para pegar uma parte do texto
console.log(texto.slice(10,19))
let palavra = texto.slice(12,19) // retorna o mesmo que o console.log e não altera a variavél original;
console.log(texto)
console.log(palavra)


//trim -- retira os espaços iniciais e finais das strings; remove os espaços em branco
console.log(texto.trim())


//split -- gera um array; quebra a string em posições, ou se colocar letras ele quebra a string na letra escolhida; 
console.log(texto.split(" "))


//replace -- troca/substitui/altera uma string;
console.log(texto.replace("Elivelton", "Vinicius"))