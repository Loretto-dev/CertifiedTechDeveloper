let userChoice = parseInt(prompt('1 - Pedra, 2 - Papel, 3 - Tesoura')) 

let botChoice = parseInt(Math.random()*3+1)//gera numero aleatório

if(userChoice === 1){
    if(botChoice === 1){
        alert('Empatou')
    }
    if(botChoice === 2){
        alert('Perdeu')
    }
    if(botChoice === 3){
        alert('Ganhou')
    }
}
if(userChoice === 2){
    if(botChoice === 1){
        alert('Ganhou')
    }
    if(botChoice === 2){
        alert('Empatou')
    }
    if(botChoice === 3){
        alert('Perdeu')
    }
}
if(userChoice === 3){
    if(botChoice === 1){
        alert('Perdeu')
    }
    if(botChoice === 2){
        alert('Ganhou')
    }
    if(botChoice === 3){
        alert('Empatou')
    }
}