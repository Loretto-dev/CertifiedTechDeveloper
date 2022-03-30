import random

while True:
    aleatorio = random.randrange(0, 5)
    escolhaPc = ""
    print("1)Pedra")
    print("2)Papel")
    print("3)Tesoura")
    print("4)Spock")
    print("5)Lagarto")
    print("6)Sair do Programa")
    opcao = int(input("O que você escolhe: "))

    if opcao == 1:
        escolhaUsuario = "pedra"
    elif opcao == 2:
        escolhaUsuario = "papel"
    elif opcao == 3:
        escolhaUsuario = "tesoura"
    elif opcao == 4:
        escolhaUsuario = "spock"
    elif opcao == 5:
        escolhaUsuario = "lagarto"
    elif opcao == 6:
        print("Nos vemos!")
        break
    else:
        print("Valor Invalido")
        continue

    print("Tua escolha: ", escolhaUsuario)
    if aleatorio == 0:
        escolhaPc = "pedra"
    elif aleatorio == 1:
        escolhaPc = "papel"
    elif aleatorio == 2:
        escolhaPc = "tesoura"
    elif aleatorio == 3:
        escolhaPc = "spock"
    elif aleatorio == 4:
        escolhaPc = "lagarto"
    print("PC escolheu: ", escolhaPc)
    print("...")

    if escolhaPc == "pedra" and escolhaUsuario == "papel":
        print("Ganhou, papel cobre pedra")
    elif escolhaPc == "pedra" and escolhaUsuario == "spock":
        print("Ganhou, Spock vaporiza pedra")
    elif escolhaPc == "papel" and escolhaUsuario == "tesoura":
        print("Ganhou, tesoura corta papel")
    elif escolhaPc == "papel" and escolhaUsuario == "lagarto":
        print("Ganhou, lagarto come papel")
    elif escolhaPc == "tesoura" and escolhaUsuario == "pedra":
        print("Ganhou, pedra amassa tesoura")
    elif escolhaPc == "tesoura" and escolhaUsuario == "spock":
        print("Ganhou, Spock quebra tesoura")
    elif escolhaPc == "spock" and escolhaUsuario == "papel":
        print("Ganhou, papel refuta Spock")
    elif escolhaPc == "spock" and escolhaUsuario == "lagarto":
        print("Ganhou, lagarto envenena Spock")
    elif escolhaPc == "lagarto" and escolhaUsuario == "tesoura":
        print("Ganhou, tesoura decapita lagarto")
    elif escolhaPc == "lagarto" and escolhaUsuario == "pedra":
        print("Ganhou, pedra esmaga lagarto")

    if escolhaUsuario == "pedra" and escolhaPc == "papel":
        print("Perdeu, papel cobre pedra")
    elif escolhaUsuario == "pedra" and escolhaPc == "spock":
        print("Perdeu, Spock vaporiza pedra")
    elif escolhaUsuario == "papel" and escolhaPc == "tesoura":
        print("Perdeu, tesoura corta papel")
    elif escolhaUsuario == "papel" and escolhaPc == "lagarto":
        print("Perdeu, lagarto come papel")
    elif escolhaUsuario == "tesoura" and escolhaPc == "pedra":
        print("Perdeu, pedra amassa tesoura")
    elif escolhaUsuario == "tesoura" and escolhaPc == "spock":
        print("Perdeu, Spock quebra tesoura")
    elif escolhaUsuario == "spock" and escolhaPc == "papel":
        print("Perdeu, papel refuta Spock")
    elif escolhaUsuario == "spock" and escolhaPc == "lagarto":
        print("Perdeu, lagarto envenena Spock")
    elif escolhaUsuario == "lagarto" and escolhaPc == "tesoura":
        print("Perdeu, tesoura decapita lagarto")
    elif escolhaUsuario == "lagarto" and escolhaPc == "pedra":
        print("Perdeu, pedra esmaga lagarto")
    elif escolhaUsuario == escolhaPc:
        print("Empate")
    again = input("Jogar novamente? s/n: ")
    if 's' in again:
        continue
    elif 'n' in again:
        print("Nos vemos!")
        break
    else:
        print("Valor Invalido")