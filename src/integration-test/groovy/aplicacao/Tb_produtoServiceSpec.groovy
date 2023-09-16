package aplicacao

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class Tb_produtoServiceSpec extends Specification {

    Tb_produtoService tb_produtoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Tb_produto(...).save(flush: true, failOnError: true)
        //new Tb_produto(...).save(flush: true, failOnError: true)
        //Tb_produto tb_produto = new Tb_produto(...).save(flush: true, failOnError: true)
        //new Tb_produto(...).save(flush: true, failOnError: true)
        //new Tb_produto(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tb_produto.id
    }

    void "test get"() {
        setupData()

        expect:
        tb_produtoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Tb_produto> tb_produtoList = tb_produtoService.list(max: 2, offset: 2)

        then:
        tb_produtoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tb_produtoService.count() == 5
    }

    void "test delete"() {
        Long tb_produtoId = setupData()

        expect:
        tb_produtoService.count() == 5

        when:
        tb_produtoService.delete(tb_produtoId)
        sessionFactory.currentSession.flush()

        then:
        tb_produtoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Tb_produto tb_produto = new Tb_produto()
        tb_produtoService.save(tb_produto)

        then:
        tb_produto.id != null
    }
}
