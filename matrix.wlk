object neo {
    method esElElegido() = true
    var energia = 100
    method saltar() {
        energia = energia/2
    }
    method vitalidad() = energia / 10
}

object morfeo {
    method esElElegido() = false
    var vitalidad = 8
    var descansado = true
    method vitalidad() = vitalidad
    method saltar() {
      vitalidad = vitalidad - 1
      descansado = not descansado
    }
}

object trinity {
    method esElElegido() = false
    method vitalidad() = 0 
    method saltar() {
      
    }
}

object nave {
  
}