package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(CoordenacaoController)
@Mock(Coordenacao)
class CoordenacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/coordenacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.coordenacaoInstanceList.size() == 0
        assert model.coordenacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.coordenacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.coordenacaoInstance != null
        assert view == '/coordenacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/coordenacao/show/1'
        assert controller.flash.message != null
        assert Coordenacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenacao/list'

        populateValidParams(params)
        def coordenacao = new Coordenacao(params)

        assert coordenacao.save() != null

        params.id = coordenacao.id

        def model = controller.show()

        assert model.coordenacaoInstance == coordenacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenacao/list'

        populateValidParams(params)
        def coordenacao = new Coordenacao(params)

        assert coordenacao.save() != null

        params.id = coordenacao.id

        def model = controller.edit()

        assert model.coordenacaoInstance == coordenacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/coordenacao/list'

        response.reset()

        populateValidParams(params)
        def coordenacao = new Coordenacao(params)

        assert coordenacao.save() != null

        // test invalid parameters in update
        params.id = coordenacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/coordenacao/edit"
        assert model.coordenacaoInstance != null

        coordenacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/coordenacao/show/$coordenacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        coordenacao.clearErrors()

        populateValidParams(params)
        params.id = coordenacao.id
        params.version = -1
        controller.update()

        assert view == "/coordenacao/edit"
        assert model.coordenacaoInstance != null
        assert model.coordenacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/coordenacao/list'

        response.reset()

        populateValidParams(params)
        def coordenacao = new Coordenacao(params)

        assert coordenacao.save() != null
        assert Coordenacao.count() == 1

        params.id = coordenacao.id

        controller.delete()

        assert Coordenacao.count() == 0
        assert Coordenacao.get(coordenacao.id) == null
        assert response.redirectedUrl == '/coordenacao/list'
    }
}
