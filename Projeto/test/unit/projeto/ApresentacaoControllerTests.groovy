package projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(ApresentacaoController)
@Mock(Apresentacao)
class ApresentacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/apresentacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.apresentacaoInstanceList.size() == 0
        assert model.apresentacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.apresentacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.apresentacaoInstance != null
        assert view == '/apresentacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/apresentacao/show/1'
        assert controller.flash.message != null
        assert Apresentacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao/list'

        populateValidParams(params)
        def apresentacao = new Apresentacao(params)

        assert apresentacao.save() != null

        params.id = apresentacao.id

        def model = controller.show()

        assert model.apresentacaoInstance == apresentacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao/list'

        populateValidParams(params)
        def apresentacao = new Apresentacao(params)

        assert apresentacao.save() != null

        params.id = apresentacao.id

        def model = controller.edit()

        assert model.apresentacaoInstance == apresentacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao/list'

        response.reset()

        populateValidParams(params)
        def apresentacao = new Apresentacao(params)

        assert apresentacao.save() != null

        // test invalid parameters in update
        params.id = apresentacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/apresentacao/edit"
        assert model.apresentacaoInstance != null

        apresentacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/apresentacao/show/$apresentacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        apresentacao.clearErrors()

        populateValidParams(params)
        params.id = apresentacao.id
        params.version = -1
        controller.update()

        assert view == "/apresentacao/edit"
        assert model.apresentacaoInstance != null
        assert model.apresentacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao/list'

        response.reset()

        populateValidParams(params)
        def apresentacao = new Apresentacao(params)

        assert apresentacao.save() != null
        assert Apresentacao.count() == 1

        params.id = apresentacao.id

        controller.delete()

        assert Apresentacao.count() == 0
        assert Apresentacao.get(apresentacao.id) == null
        assert response.redirectedUrl == '/apresentacao/list'
    }
}
