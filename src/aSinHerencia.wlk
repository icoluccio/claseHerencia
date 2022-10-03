object diariero {

	const property sueldo = 100

}

object policia {

	const property sueldo = 1000

}

object poste {

}

class Batman {

	var horasVividas = 0
	var dinero = 10000
	var property trabajo = diariero

	method hablar(mensaje) {
      console.println(mensaje)
	}

	method trabajar() {
		horasVividas += 8
		dinero += diariero.sueldo()
	}

	method pelear() {
		self.hablar("Kablam!")
	}

}

class Spiderman {

	var horasVividas = 0
	var dinero = 0
	var property objetoApuntado = poste
	var property trabajo = diariero

	method hablar(mensaje) {
      console.println(mensaje)
	}
	
	method colgarseDe(objeto) {
	// ….
	}

	method trabajar() {
		horasVividas += 8
		dinero += trabajo.sueldo()
	}

	method pelear() {
		self.hablar("Ni a palos")
		self.colgarseDe(objetoApuntado)
	}

}

class PoliciaCorrupto {

	var horasVividas = 0
	var dinero = 100000
	var property trabajo = policia

	method hablar(mensaje) {
      console.println(mensaje)
	}

	method trabajar() {
		horasVividas += 8
		dinero += trabajo.sueldo()
	}

	method pelear() {
	}

}

