package aplicacao

import grails.gorm.services.Service

@Service(Inicio)
interface InicioService {

    Inicio get(Serializable id)

    List<Inicio> list(Map args)

    Long count()

    void delete(Serializable id)

    Inicio save(Inicio inicio)

}