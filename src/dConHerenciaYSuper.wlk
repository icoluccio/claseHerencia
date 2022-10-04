object diariero {

	const property sueldo = 100

}

object poste {

}

class Persona {

	var horasVividas = 0
	var dinero = 10000
	var property trabajo = diariero

	method hablar(mensaje) {
		console.println(mensaje)
	}

	method trabajar() {
		horasVividas += 8
		dinero += trabajo.sueldo()
	}

}

class Batman inherits Persona {

	method pelear() {
		self.hablar("Kablam!")
	}

}

class Spiderman inherits Persona {

	var property objetoApuntado = poste

	method colgarseDe(objeto) {
	// ….
	}

	method pelear() {
		self.hablar("Ni a palos")
		self.colgarseDe(objetoApuntado)
	}

	override method trabajar() {
		// Super sólo funciona al redefinir
		super()
		self.hablar("Qué embole trabajar")
	}

}

class PoliciaCorrupto inherits Persona {

	method pelear() {
	}

	// Acá redefinimos trabajar
	override method trabajar() {
		horasVividas += 4
		self.hablar("Gran vida!")
		dinero += trabajo.sueldo() * 2
	}

}

