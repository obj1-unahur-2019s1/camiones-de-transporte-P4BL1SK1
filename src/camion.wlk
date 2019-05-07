import cosas.*

class Camion {
	const property cosas = []
	var tara=1000
	const excedencia=2500
	method cargar(unaCosa){cosas.add(unaCosa)}
	method descargar(unaCosa){cosas.remove(unaCosa)}
	method pesoTotal(){return tara+cosas.sum{cosa=>cosa.peso()}}
	method excedidoDePeso(){return self.pesoTotal()>excedencia}
	method objetosPeligrosos(nivel){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>=nivel})
		
	}
	method objetosMasPeligrosos(cosa){
		return self.objetosPeligrosos(cosa)
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all{cosa=>cosa.nivelPeligrosidad()<nivelMaximoPeligrosidad}
	}
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any{cosas.peso().between(min,max)}
	}
	method cosaMasPesada(){
		return cosas.asSet().max{cosa=>cosa.peso()}
	}
	method totalBultos(){
		return cosas.sum{cosa=>cosa.bulto()}
	}		
}