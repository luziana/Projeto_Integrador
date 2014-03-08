package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(TituloPaginasController)
@Mock(TituloPaginas)
class TituloPaginasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tituloPaginas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tituloPaginasInstanceList.size() == 0
        assert model.tituloPaginasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tituloPaginasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tituloPaginasInstance != null
        assert view == '/tituloPaginas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tituloPaginas/show/1'
        assert controller.flash.message != null
        assert TituloPaginas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tituloPaginas/list'

        populateValidParams(params)
        def tituloPaginas = new TituloPaginas(params)

        assert tituloPaginas.save() != null

        params.id = tituloPaginas.id

        def model = controller.show()

        assert model.tituloPaginasInstance == tituloPaginas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tituloPaginas/list'

        populateValidParams(params)
        def tituloPaginas = new TituloPaginas(params)

        assert tituloPaginas.save() != null

        params.id = tituloPaginas.id

        def model = controller.edit()

        assert model.tituloPaginasInstance == tituloPaginas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tituloPaginas/list'

        response.reset()

        populateValidParams(params)
        def tituloPaginas = new TituloPaginas(params)

        assert tituloPaginas.save() != null

        // test invalid parameters in update
        params.id = tituloPaginas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tituloPaginas/edit"
        assert model.tituloPaginasInstance != null

        tituloPaginas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tituloPaginas/show/$tituloPaginas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tituloPaginas.clearErrors()

        populateValidParams(params)
        params.id = tituloPaginas.id
        params.version = -1
        controller.update()

        assert view == "/tituloPaginas/edit"
        assert model.tituloPaginasInstance != null
        assert model.tituloPaginasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tituloPaginas/list'

        response.reset()

        populateValidParams(params)
        def tituloPaginas = new TituloPaginas(params)

        assert tituloPaginas.save() != null
        assert TituloPaginas.count() == 1

        params.id = tituloPaginas.id

        controller.delete()

        assert TituloPaginas.count() == 0
        assert TituloPaginas.get(tituloPaginas.id) == null
        assert response.redirectedUrl == '/tituloPaginas/list'
    }
}
