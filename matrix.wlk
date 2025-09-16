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
    method saltar() {}
}

object nave {
    const pasajeros = #{neo, morfeo, trinity}
    method cantidadDePasajeros() = pasajeros.size()
    method pasajeroConMayorVitalidad() = pasajeros.max({p=>p.vitalidad()})
    method estaElElegido() = pasajeros.any({p=>p.esElElegido()})
    method chocar() {
        pasajeros.forEach({p=>p.saltar()})
        pasajeros.clear()
    }
    method pasajerosQueNoSonElegidos() = pasajeros.filter({p => not p.esElElegido()})
    method acelerar() {
        self.pasajerosQueNoSonElegidos().forEach({p => p.saltar()})
    }
}