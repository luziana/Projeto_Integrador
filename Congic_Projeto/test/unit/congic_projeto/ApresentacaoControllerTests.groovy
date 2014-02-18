package congic_projeto



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
        assert "/apresentacao_Evento/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.apresentacao_EventoInstanceList.size() == 0
        assert model.apresentacao_EventoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.apresentacao_EventoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.apresentacao_EventoInstance != null
        assert view == '/apresentacao_Evento/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/apresentacao_Evento/show/1'
        assert controller.flash.message != null
        assert Apresentacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao_Evento/list'

        populateValidParams(params)
        def apresentacao_Evento = new Apresentacao(params)

        assert apresentacao_Evento.save() != null

        params.id = apresentacao_Evento.id

        def model = controller.show()

        assert model.apresentacao_EventoInstance == apresentacao_Evento
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao_Evento/list'

        populateValidParams(params)
        def apresentacao_Evento = new Apresentacao(params)

        assert apresentacao_Evento.save() != null

        params.id = apresentacao_Evento.id

        def model = controller.edit()

        assert model.apresentacao_EventoInstance == apresentacao_Evento
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao_Evento/list'

        response.reset()

        populateValidParams(params)
        def apresentacao_Evento = new Apresentacao(params)

        assert apresentacao_Evento.save() != null

        // test invalid parameters in update
        params.id = apresentacao_Evento.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/apresentacao_Evento/edit"
        assert model.apresentacao_EventoInstance != null

        apresentacao_Evento.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/apresentacao_Evento/show/$apresentacao_Evento.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        apresentacao_Evento.clearErrors()

        populateValidParams(params)
        params.id = apresentacao_Evento.id
        params.version = -1
        controller.update()

        assert view == "/apresentacao_Evento/edit"
        assert model.apresentacao_EventoInstance != null
        assert model.apresentacao_EventoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/apresentacao_Evento/list'

        response.reset()

        populateValidParams(params)
        def apresentacao_Evento = new Apresentacao(params)

        assert apresentacao_Evento.save() != null
        assert Apresentacao.count() == 1

        params.id = apresentacao_Evento.id

        controller.delete()

        assert Apresentacao.count() == 0
        assert Apresentacao.get(apresentacao_Evento.id) == null
        assert response.redirectedUrl == '/apresentacao_Evento/list'
    }
}
