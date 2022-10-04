object diariero {

	const property sueldo = 100

}

object poste {

}

class Persona {

	var horasVividas = 0
	var dinero = 10000
	var property trabajo = diariero
	var property superpoder = batman

	method hablar(mensaje) {
      console.println(mensaje)
	}

	method trabajar(mensaje) {
      superpoder.trabajar(self)
	}
	method pelear(mensaje) {
      superpoder.pelear(self)
	}
	method vivirHoras(horas){
		horasVividas +=  horas
	}
	
	method cobrar(){
		dinero += trabajo.sueldo()
	}
}




class PoderComun{
	method trabajar(persona) {
		persona.vivirHoras(8)
		persona.cobrar()
	}
}

object batman inherits PoderComun {
	method pelear(persona) {
		persona.hablar("Kablam!")
	}
}

object spiderman inherits PoderComun {
	var property objetoApuntado = poste

	method colgarseDe(objeto) {
	// ….
	}

	method pelear(persona) {
		persona.hablar("Ni a palos")
		self.colgarseDe(objetoApuntado)
	}

}

object policiaCorrupto {
	// Acá definimos trabajar, pero no se necesita herencia
	
	method trabajar(persona) {
		persona.vivirHoras(4)
		persona.hablar("Gran vida!")
		2.times({persona.cobrar()})
	}
}

