class Equipo{
    const nombre
    method nombre() = nombre
    const nivelDeEnergiaBase
    const entrenador
    method entrenador()= entrenador
    const tecnologiasComplementarias=[]
    method agregarTecnologia(unaTecnologia){
        tecnologiasComplementarias.add(unaTecnologia)
        }

    method tecnologiasActivas() = tecnologiasComplementarias.filter({t => t.estaActiva()})
    method valoresEnergeticosDeTecnologiasActivas() = self.tecnologiasActivas().sum({t =>t.valorEnergetico()})
    method energiaTotal()= nivelDeEnergiaBase + self.valoresEnergeticosDeTecnologiasActivas()
    method esDePrestigioUniversal()
}
class Luminico inherits Equipo{
    const nivelDeRadiacionCapturada
    const cristalesSolares=[]
    method agregarCristalSolar(unCristal) {
        cristalesSolares.add(unCristal)
    }

    override method energiaTotal(){
        if (nivelDeRadiacionCapturada <= 5000){
            return super() + (super()*0.1)}
        else{
            return super()}
}
        
 override method esDePrestigioUniversal() = cristalesSolares.size() >= 3 and entrenador.esEliteGalactico() and tecnologiasComplementarias.any({t=>t.estaActiva()})   

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

    override method esDePrestigioUniversal() = estanCertificados and cantModulosActivos > 3 and tecnologiasComplementarias.all({t => t.estaActiva()})
}
class Eterico inherits Equipo{
    const nivelFluctuacion
    const cantPortalesAbiertos

    override method energiaTotal(){
        if (self.esDePrestigioUniversal()){
            return super() + (super()*0.15)}
        else{
            return super()}
    }

    override method esDePrestigioUniversal() = nivelFluctuacion >75 and cantPortalesAbiertos >= 2 and self.tecnologiasActivas().size() >= 2
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

