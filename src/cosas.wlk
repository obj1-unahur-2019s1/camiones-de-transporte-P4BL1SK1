object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	method bulto(){return 1}
}

object bumblebee {
	var transformadoEnAuto = true
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar(){transformadoEnAuto=not transformadoEnAuto}	
	method bulto(){return 2}
}

class PaqueteLadrillos{
	var cant=0
	method cant(num){cant=num}
	method peso(){return  2*cant}
	method nivelPeligrosidad(){ return 2}
	method bulto(){
		if(cant.between(1,100)){return 1}
		else if(cant.between(101,300)){return 2}
		else{return 3}
	}
}
object arenaAGranel{
	var property peso=0
	method nivelPeligrosidad(){ return 2} 
	method bulto(){return 1}
}


object bateriaAntiAerea{
	var conMisiles=true
	method peso(){return if(conMisiles){300}else{return 200}}
	method nivelPeligrosidad(){return if(conMisiles){return 100}else{return 0}}
	method bulto(){
		if(conMisiles){return 2}
		else{return 1}
	}
}

object contenedorPortuario{
	const cosasDentro=[]
	method cargar(unaCosa){cosasDentro.add(unaCosa)}
	method descargar(unaCosa){cosasDentro.remove(unaCosa)}
	method peso(){return cosasDentro.sum({cosas=>cosas.peso()})+100}
	method nivelPeligrosidad(){
		if(cosasDentro.size()==0){return 0}
		else{return cosasDentro.max({cosas=>cosas.nivelPeligrosidad()}).nivelPeligrosidad()}
	}
	method bulto(){
		return cosasDentro.sum({cosas=>cosas.bulto()})+1
	}
}

object  residuosRadioactivos{
	var pesoX
	method cambiarPeso(peso){pesoX=peso}
	method peso(){return pesoX}
	method nivelPeligrosidad(){return 200}
	method bulto(){return 1}
}

object embalajeDeSeguridad{
	var cosas
	method embalar(cosa){cosas=cosa}
	method peso(){return cosas.peso()}
	method nivelPeligrosidad(){return cosas.nivelPeligrosidad()/2}
	method bulto(){return 2}
}





