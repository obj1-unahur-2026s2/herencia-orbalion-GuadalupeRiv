class Equipo{
    const nombre
    method nombre() = nombre
    const nivelDeEnergiaBase
    const entrenador
    method entrenador()= entrenador
    const tecnologiasComplemetarias=[]
    method agregarTecnologia(unaTecnologia){
        tecnologiasComplemetarias.add(unaTecnologia)
        }

    method tecnologiasActivas() = tecnologiasComplemetarias.filter({t => t.estaActiva()})
    method valoresEnergeticosDeTecnologiasActivas() = self.tecnologiasActivas().sum({t =>t.valorEnergetico()})
    method energiaTotal()= nivelDeEnergiaBase + self.valoresEnergeticosDeTecnologiasActivas()

}
class Luminico inherits Equipo{
    const nivelDeRadiacionCapturada
    const cristalesSolares=[]

    override method energiaTotal(){
        if (nivelDeRadiacionCapturada <= 5000){
            return super() + (super()*0.1)}
        else{
            return super()}
}
        
    

}
class Sintetico inherits Equipo{
    const nivelDeProcesamientoCentral
    const cantModulosActivos
    const estanCertificados

    override method energiaTotal(){
        if (cantModulosActivos > 5){
           return super() - (super()*0.2)}
        else{
            return super()}
    }
}
class Eterico inherits Equipo{
    const nivelFluctuacion
    const cantPortalesAbiertos

}

class Entrenador{
    const cantCiclosSolaresExp
    const estaEnSintonia
    method estaEnSintonia() = estaEnSintonia
    const nivelPrecisionEstrategica
    method nivelPrecisionEstrategica() = nivelPrecisionEstrategica
    const rolesHomologados = [estrategaCuantico,arquitectoDeEnergia,guiaMental]
    var rol 
    method rol() = rol
    method asignarRol(nuevoRol){
        self.validarRol(nuevoRol)
        rol= nuevoRol
    }
    method  validarRol(unRol){
        if (not rolesHomologados.contains(unRol)){
             self.error("Rol no homologado por la FOZ")
        }
    }
    method cumpleCondicion(unRol) = unRol.cumpleCondicion(self)

    method esEliteGalactico() = cantCiclosSolaresExp > 10 and self.cumpleCondicion(rol)
}

object estrategaCuantico{
   method cumpleCondicion(entrenador) = entrenador.nivelPrecisionEstrategica() > 80 
}

object arquitectoDeEnergia{
    method cumpleCondicion(entrenador) = entrenador.estaEnSintonia()

}
object guiaMental{
    method cumpleCondicion(entrenador) = true
}
object guiaCuantico{
    method cumpleCondicion(entrenador) = false
}
class TecnologiasEspeciales{
    const nombre
    const valorEnergetico
    method valorEnergetico() = valorEnergetico
    const estaActiva
    method estaActiva() = estaActiva

}

