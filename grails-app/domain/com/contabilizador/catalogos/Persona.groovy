package com.contabilizador.catalogos

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String email
    static constraints = {
        nombre          blank:false
        apellidoPaterno blank:false
        apellidoMaterno blank:false
        email           email:true
        
    }
    
    String toString(){
        "${nombre}"
    }
}
