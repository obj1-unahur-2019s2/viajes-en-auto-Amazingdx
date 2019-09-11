import clientes.*
//-------------------------- Remiseras --------------------------//

object roxana
{
	//lo que el cliente haya pactado
	//precio sin cambio
	method cobrarViaje(cliente , kms) = cliente.precioPorKM() * kms

}

object gabriela
{
	//lo que el cliente haya pactado
	//precio = precio + 20%
	method cobrarViaje(cliente , kms) = cliente.precioPorKM() * kms * 1.2
	
}

object mariela
{
	//lo que el cliente haya pactado
	//precio minimo de 50 si o si
	method cobrarViaje(cliente , kms) = 50.max(cliente.precioPorKM() * kms)
	
}

object juana
{   
    // ignora por completo lo pactado
	//precio = 100 si es 8 o menos, 200 si es mas de 8
	// if distancia >= 8 then 100  else 200
	
	method cobrarViaje(cliente , kms)
	{
		if (kms > 8) return 200
		else return 100
	}
}

//------------- Lucia la que reemplaza --------------------//

object lucia
{
	var property reemplaza
	method cobrarViaje(cliente , kms) = reemplaza
}