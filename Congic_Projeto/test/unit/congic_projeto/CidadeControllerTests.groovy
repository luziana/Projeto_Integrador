package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(CidadeController)
@Mock(Cidade)
class CidadeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cidade/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cidadeInstanceList.size() == 0
        assert model.cidadeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cidadeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cidadeInstance != null
        assert view == '/cidade/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cidade/show/1'
        assert controller.flash.message != null
        assert Cidade.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cidade/list'

        populateValidParams(params)
        def cidade = new Cidade(params)

        assert cidade.save() != null

        params.id = cidade.id

        def model = controller.show()

        assert model.cidadeInstance == cidade
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cidade/list'

        populateValidParams(params)
        def cidade = new Cidade(params)

        assert cidade.save() != null

        params.id = cidade.id

        def model = controller.edit()

        assert model.cidadeInstance == cidade
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cidade/list'

        response.reset()

        populateValidParams(params)
        def cidade = new Cidade(params)

        assert cidade.save() != null

        // test invalid parameters in update
        params.id = cidade.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cidade/edit"
        assert model.cidadeInstance != null

        cidade.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cidade/show/$cidade.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cidade.clearErrors()

        populateValidParams(params)
        params.id = cidade.id
        params.version = -1
        controller.update()

        assert view == "/cidade/edit"
        assert model.cidadeInstance != null
        assert model.cidadeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cidade/list'

        response.reset()

        populateValidParams(params)
        def cidade = new Cidade(params)

        assert cidade.save() != null
        assert Cidade.count() == 1

        params.id = cidade.id

        controller.delete()

        assert Cidade.count() == 0
        assert Cidade.get(cidade.id) == null
        assert response.redirectedUrl == '/cidade/list'
    }
}
