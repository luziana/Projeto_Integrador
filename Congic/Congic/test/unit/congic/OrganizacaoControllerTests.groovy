package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(OrganizacaoController)
@Mock(Organizacao)
class OrganizacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/organizacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.organizacaoInstanceList.size() == 0
        assert model.organizacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.organizacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.organizacaoInstance != null
        assert view == '/organizacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/organizacao/show/1'
        assert controller.flash.message != null
        assert Organizacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacao/list'

        populateValidParams(params)
        def organizacao = new Organizacao(params)

        assert organizacao.save() != null

        params.id = organizacao.id

        def model = controller.show()

        assert model.organizacaoInstance == organizacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacao/list'

        populateValidParams(params)
        def organizacao = new Organizacao(params)

        assert organizacao.save() != null

        params.id = organizacao.id

        def model = controller.edit()

        assert model.organizacaoInstance == organizacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/organizacao/list'

        response.reset()

        populateValidParams(params)
        def organizacao = new Organizacao(params)

        assert organizacao.save() != null

        // test invalid parameters in update
        params.id = organizacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/organizacao/edit"
        assert model.organizacaoInstance != null

        organizacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/organizacao/show/$organizacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        organizacao.clearErrors()

        populateValidParams(params)
        params.id = organizacao.id
        params.version = -1
        controller.update()

        assert view == "/organizacao/edit"
        assert model.organizacaoInstance != null
        assert model.organizacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/organizacao/list'

        response.reset()

        populateValidParams(params)
        def organizacao = new Organizacao(params)

        assert organizacao.save() != null
        assert Organizacao.count() == 1

        params.id = organizacao.id

        controller.delete()

        assert Organizacao.count() == 0
        assert Organizacao.get(organizacao.id) == null
        assert response.redirectedUrl == '/organizacao/list'
    }
}
