object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar(){transformadoEnAuto=not transformadoEnAuto}	
}

object paqueteLadrillos{
	var cant=0
	method cant(num){cant=num}
	method peso(){return  2*cant}
	method nivelPeligrosidad(){ return 2}
	}
object arenaAGranel{
	method peso(peso){return peso}
	method nivelPeligrosidad(){ return 2} 
}

object bateriaAntiAerea{
	var conMisiles=true
	method peso(){return if(conMisiles){300}else{return 200}}
	method nivelPeligrosidad(){return if(conMisiles){return 100}else{return 0}}
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
}

object  residuosRadioactivos{
	method peso(peso){return peso}
	method nivelPeligrosidad(){return 200}
}

object embalajeDeSeguridad{
	var cosas
	method embalar(cosa){cosas=cosa}
	method peso(){return cosas.peso()}
	method nivelPeligrosidad(){return cosas.nivelPeligrosidad()/2}
}





