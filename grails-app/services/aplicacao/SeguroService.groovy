package aplicacao

import grails.gorm.services.Service

@Service(Inicio)
interface SeguroService {

    Inicio get(Serializable id)

    List<Inicio> list(Map args)

    Long count()

    void delete(Serializable id)

    Inicio save(Inicio seguro)

}