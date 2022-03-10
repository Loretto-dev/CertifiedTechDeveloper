function obterSalarioMaximoPeloCargo(cargo){
    let salarioMaximo = 0.0;
    switch(cargo){
      case "Junior":
        salarioMaximo = 2500.0;
        break;
      case "Pleno":
        salarioMaximo = 5000.0;
        break;
      case "Senior":
        salarioMaximo = 10000.0;
        break;
      case "Executivo":
        salarioMaximo = 20000.0;
        break;
      default:
        salarioMaximo = 10000000.0;
    }
  
    console.log(salarioMaximo);
    return salarioMaximo;
  
  }
  
  let cargo = "Executivo";
  
  obterSalarioMaximoPeloCargo(cargo);
  

