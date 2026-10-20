class Equipo{
    const nombre
    method nombre() = nombre
    const nivelDeEnergiaBase
    const entrenador
    method entrenador()= entrenador
    const tecnologiasComplemetarias=[]

    method tecnologiasActivas() = tecnologiasComplemetarias.filter(t => t.estaActiva())
    method valoresEnergeticosDeTecnologiasActivas() = tecnologiasActivas.sum(t =>t.valorEnergetico())
    method energiaTotal()= nivelDeEnergiaBase + valoresEnergeticosDeTecnologiasActivas()


}
class Luminico inherits Equipo{
    const nivelDeRadiacionCapturada
    const cristalesSolares=[]

    override method energiaTotal(){
        if (nivelDeRadiacionCapturada < 5000){
            return super() + (super()*0.1)
        }
    }

}
class Sintetico inherits Equipo{
    const nivelDeProcesamientoCentral
    const cantModulosActivos
    const estanCertificados

    override method energiaTotal(){
        if (cantModulosActivos > 5){
           return super() - (super()*0.2)
        }
    }
}
calss Eterico inherits Equipo{
    const nivelFluctuacion
    const cantPortalesAbiertos

}

class Entrenador{
    const cantCiclosSolaresExp
    const estaEnSintonia
    const nivelPrecisionEstrategica
    const rolesHomologados = [estrategaCuantico,arquitectoDeEnergia,guiaMental]
    var rol 
    method rol() = rol
    method asignarRol(nuevoRol){
        self.validarRol(nuevoRol)
        rol= nuevoRol
    }
    method  validarRol(unRol){
        if (not rolesHomologados.contains(unRol)){
             self.error("Rol no homologadopor la FOZ")
        }
    }
}

object estrategaCuantico{
}

object arquitectoDeEnergia{

}
object guiaMental{

}
class TecnologiasEspeciales{
    const nombre
    const valorEnergetico
    method valorEnergetico() = valorEnergetico
    const estaActiva
    method estaActiva() = estaActiva

}
