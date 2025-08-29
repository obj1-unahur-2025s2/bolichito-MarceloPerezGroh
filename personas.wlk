import bolichito.*
import objeto.*
import color.*


object rosa{
  var objeto = placa
  method objeto() = objeto
  method leGusta(algo){
    return algo.peso() <= 2000
  } 
}

object estefania{
  method leGusta(algo){
    return algo.color().esFuerte() 
  } 
}

object luisa{
  method leGusta(algo){
    return algo.material().esBrillante()
  } 
}

object juan {
    method leGusta(algo) {
        return !algo.color().esFuerte() || 
          (algo.peso().between(1200,1800))
    }
}