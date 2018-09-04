import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	method yaEstoyEn()
	if (posicion(pepita)= posicion(ciudad)){
		gameSay.(pepita. "yaEstoyEn")
	}
	 
}


object roque {
	method encontrar(algo)= teEncontre(algo)
	method teEncontre(algo)= (posicion(roque)=posicion(comida))
	
	method teEncontre(alguien)= (posicion(roque)=posicion(pepita))
	method atraparComida(algo){
		if(teEncontre(algo)){
			algo.teEncontro
			algo.move
		}
		
	}
	method darleDeComer(alguien){
		
	}
}

