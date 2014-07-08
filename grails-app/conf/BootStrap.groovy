
import com.contabilizador.login.Rol
import com.contabilizador.login.Usuario
import com.contabilizador.login.UsuarioRol

class BootStrap {

    def init = { servletContext ->
        /**switch(Environment.current){
            case Environment.DEVELOPMENT:**/
        new Usuario (
                    /**firstName : "Administrador",
                    lastName : "Del Sistema",
                    email : "admin@empresa.com",**/
                    username : "admin",
                    password : "admin",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Usuario (
                    /**firstName : "Diana",
                    lastName : "Villa",
                    email : "diana@empresa.com",**/
                    username : "contador",
                    password : "contador",
                    enabled : true,
                    accountExpired : false,
                    accountLocked : false,
                    passwordExpired : false
                ).save()

                new Rol (authority : "ROLE_ADMINISTRADOR").save()
                new Rol (authority : "ROLE_CONTADOR").save()


                new UsuarioRol (usuario : Usuario.findByUsername("admin"), rol : Rol.findByAuthority("ROLE_ADMINISTRADOR")).save()
                new UsuarioRol (usuario : Usuario.findByUsername("contador"), rol : Rol.findByAuthority("ROLE_CONTADOR")).save()
                
                
                //new Estado (nombre:"Estado de México").save()
                //new Pais (nombre:"México").save()
                
                //new ConfiguracionEmpresa(nombreDeEmpresa:"NUUPTECH S.A. de C.V.",domicilio:"Calle Los Cerezos 943",email:"nuuptech1@gmail.com").save()
                
                println("we made it! ")
                /**break
        }**/
    }
    def destroy = {
    }
}
