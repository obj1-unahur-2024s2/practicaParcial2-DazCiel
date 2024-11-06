class Raza {
  const property raza
}

object orco {
  const property bando = horda
  const property puedeSerInteligente = false
  
  method bonifRaza() = 1.1
}

object humano {
  const property bando = alianza
  const property puedeSerInteligente = true
  
  method bonifRaza() = 1
}

object horda {
  
}

object alianza {
  
}

class Personaje inherits Raza {
  const property fuerza
  const property inteligencia
  var rol
  
  method rol() = rol
  
  method cambioDeClase(unaClase) {
    rol = unaClase
  }
  
  method potencialOfensivo() = ((fuerza * 10) + rol.bonif()) * raza.bonifRaza()
  
  method esInteligente() = raza.puedeSerInteligente() && (inteligencia >= 50)
  
  method esGroso() = rol.groso()
}

object guerrero {
  method bonif() = 100
  
  method groso() = Personaje.fuerza > 50
}

class Cazador {
  var mascota = null
  
  method bonif() = mascota.potencialOfensivo()
  
  method domarBestia(unaMascota) {
    mascota = unaMascota
  }
  
  method groso() = mascota.edad() > 10
}

object brujo {
  method bonif() = 0
  
  method groso() = true
}

class Mascota {
  const property fuerza
  const property edad
  const property garras
  
  method potencialOfensivo() = if (garras) fuerza * 2 else fuerza
}

class Ciudad {
  const property habitantes
}

class Aldea inherits Ciudad {
  const property maximoHabitantes
  
  method agregarHabitante(personaje) {
    if (maximoHabitantes > habitantes.size()) habitantes.add(personaje)
  }
}