
//Exercicio do IMC usando Arrays//
//Para cada um let, foram definidas duas variaveis, uma para os dados do usuario, e outra com a formula do imc
let jose = ["José da Silva", 27, 83.5, 1.70, true]; imcjose = jose[2]/jose[3]*jose[3]
let carlos = ["Carlos de Souza", 28, 80.1, 1.76, false]; imccarlos = carlos[2]/carlos[3]**2
let aline = ["Aline Ferreira", 33, 63.7, 1.53, true]; imcaline = aline[2]/aline[3]**2
let ana = ["Ana Paula", 26, 55.0, 1.62, false]; imcana = ana[2]/ana[3]**2

console.log(jose[0]+ "tem " + jose[1] + " anos de idade e seu índice de massa corporal é de " +imcjose + " e o plano é: " + jose[4])
console.log(carlos[0]+ "tem " + carlos[1] + " anos de idade e seu índice de massa corporal é de " +imccarlos + " e o plano é: " + carlos[4])
console.log(aline[0]+ "tem " + aline[1] + " anos de idade e seu índice de massa corporal é de " +imcaline + " e o plano é: " + aline[4])
console.log(ana[0]+ "tem " + ana[1] + " anos de idade e seu índice de massa corporal é de " +imcana + " e o plano é: " + ana[4])

let peso = 60.5; //Peso em kg
let altura = 1.5//Altura em metros(m)
let imc = peso/(altura*altura)

console.log("O IMC do peso: " + peso + " kg e altura: " + altura + " m é igual a : " + imc)