object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota
    
    method objectoMostrador(nuevoEnMostrador) {
        objetoEnMostrador = nuevoEnMostrador   
    }
    method objetoVidriera(nuevoEnVidriera) {
        objetoEnVidriera = nuevoEnVidriera
    }

    method esBrillante() {
        return objetoEnVidriera.material().esBrillante() && 
               objetoEnMostrador.material().esBrillante()
    }
    
    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }

    method estaEquilibrado() {
        return objetoEnVidriera.peso() < objetoEnMostrador.peso()
    } 

    method exhibeObjeto(color) {
        return objetoEnVidriera.color() == color || 
               objetoEnMostrador.color() == color
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || self.esMonocromatico()
    }

    method tieneAlgoQueLeGustaA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
 
    method puedoOfrecer(persona) {
        return persona.leGusta(objetoEnVidriera) || persona.leGusta(objetoEnMostrador)
    } 

    method intercambiarObjetos() {
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
}
