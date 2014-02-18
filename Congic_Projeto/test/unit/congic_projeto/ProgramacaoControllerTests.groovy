package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(ProgramacaoController)
@Mock(Programacao)
class ProgramacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/programacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.programacaoInstanceList.size() == 0
        assert model.programacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.programacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.programacaoInstance != null
        assert view == '/programacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/programacao/show/1'
        assert controller.flash.message != null
        assert Programacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/programacao/list'

        populateValidParams(params)
        def programacao = new Programacao(params)

        assert programacao.save() != null

        params.id = programacao.id

        def model = controller.show()

        assert model.programacaoInstance == programacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/programacao/list'

        populateValidParams(params)
        def programacao = new Programacao(params)

        assert programacao.save() != null

        params.id = programacao.id

        def model = controller.edit()

        assert model.programacaoInstance == programacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/programacao/list'

        response.reset()

        populateValidParams(params)
        def programacao = new Programacao(params)

        assert programacao.save() != null

        // test invalid parameters in update
        params.id = programacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/programacao/edit"
        assert model.programacaoInstance != null

        programacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/programacao/show/$programacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        programacao.clearErrors()

        populateValidParams(params)
        params.id = programacao.id
        params.version = -1
        controller.update()

        assert view == "/programacao/edit"
        assert model.programacaoInstance != null
        assert model.programacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/programacao/list'

        response.reset()

        populateValidParams(params)
        def programacao = new Programacao(params)

        assert programacao.save() != null
        assert Programacao.count() == 1

        params.id = programacao.id

        controller.delete()

        assert Programacao.count() == 0
        assert Programacao.get(programacao.id) == null
        assert response.redirectedUrl == '/programacao/list'
    }
}
