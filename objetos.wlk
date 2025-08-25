//materiales
object cobre{
  method esBrillante() = true
}
object vidrio{
  method esBrillante() = false
}
object lino{
  method esBrillante() = false
}
object cuero{
  method esBrillante() = false
}
object madera{
  method esBrillante() = false
}

//remera
object remera{
  method color() = rojo 
  method material() = lino
  method peso() = 800
}
//pelota
object pelota{
  method color() = pardo
  method peso() = 800
  method material() = cuero 
}

//muñeco
object muñeco{
  var peso = 1000

  method material() = vidrio
  method color() = celeste
  method peso(nuevoPeso){
    peso = nuevoPeso
  } 

  method peso(){
    return peso
  }
}
//mas objetos
object arito {
  method peso() {return 180}
  method color() {return celeste}
  method peso() {return 180}
  method material() {return cobre}
}

object banquito {
  var color = naranja
  method peso() {return 1700}
  method material() {return madera}
  method color() {return color}
  method color(unColor) {color = unColor}
  method material() {return madera}
}

object cajita {
  var objetoAdentro = arito
  method guardar(unObjeto) {objetoAdentro = unObjeto}
  method objetoAdentro() = objetoAdentro
  method color() = rojo
  method material() = cobre
  method peso() = 400 + objetoAdentro.peso()
}
// colores

object naranja {
  method esFuerte() = true
}
object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}
