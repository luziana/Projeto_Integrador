package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(LocalizacaoController)
@Mock(Localizacao)
class LocalizacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/localizacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.localizacaoInstanceList.size() == 0
        assert model.localizacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.localizacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.localizacaoInstance != null
        assert view == '/localizacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/localizacao/show/1'
        assert controller.flash.message != null
        assert Localizacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/localizacao/list'

        populateValidParams(params)
        def localizacao = new Localizacao(params)

        assert localizacao.save() != null

        params.id = localizacao.id

        def model = controller.show()

        assert model.localizacaoInstance == localizacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/localizacao/list'

        populateValidParams(params)
        def localizacao = new Localizacao(params)

        assert localizacao.save() != null

        params.id = localizacao.id

        def model = controller.edit()

        assert model.localizacaoInstance == localizacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/localizacao/list'

        response.reset()

        populateValidParams(params)
        def localizacao = new Localizacao(params)

        assert localizacao.save() != null

        // test invalid parameters in update
        params.id = localizacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/localizacao/edit"
        assert model.localizacaoInstance != null

        localizacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/localizacao/show/$localizacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        localizacao.clearErrors()

        populateValidParams(params)
        params.id = localizacao.id
        params.version = -1
        controller.update()

        assert view == "/localizacao/edit"
        assert model.localizacaoInstance != null
        assert model.localizacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/localizacao/list'

        response.reset()

        populateValidParams(params)
        def localizacao = new Localizacao(params)

        assert localizacao.save() != null
        assert Localizacao.count() == 1

        params.id = localizacao.id

        controller.delete()

        assert Localizacao.count() == 0
        assert Localizacao.get(localizacao.id) == null
        assert response.redirectedUrl == '/localizacao/list'
    }
}
