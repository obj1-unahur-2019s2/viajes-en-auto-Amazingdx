object ludmila
{
	// pricing= $18 por cada km
	method precioPorKM() = 18
}

object anaMaria
{
	// pricing= $30 por cada km   if economicamenteEstable == true
	//          $25 por cada km   if economicamenteEstable == false
	var property estable = true
	
	method precioPorKM() 
	{ 
			if (estable == true) return 30 
			
			else return 25			
	}
}

object teresa
{
	// pricing variable, valor inicializado en $22
	var property precioPorKM = 22
	
}

// -------- La cadeta    -------- //

object melina
{
	var property cliente
	// mismo precio -3
	method precioPorKM() = cliente.precioPorKM() - 3
}
