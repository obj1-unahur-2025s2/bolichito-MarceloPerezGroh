object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota
    
    method reemplazarObjetos(nuevoEnVidriera, nuevoEnMostrador) {
        objetoEnVidriera = nuevoEnVidriera
        objetoEnMostrador = nuevoEnMostrador
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

    method tieneObjetoDeColor(unColor) {
        return objetoEnVidriera.color() == unColor || 
               objetoEnMostrador.color() == unColor
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || self.esMonocromatico()
    }

    method tieneAlgoQueLeGustaA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
 
    method ofrecerALaPersona(persona) {
        return persona.leGusta(objetoEnVidriera) || persona.leGusta(objetoEnMostrador)
    } 

    method intercambiarObjetos() {
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
}
