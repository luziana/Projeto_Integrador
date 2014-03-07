package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(ArtigosController)
@Mock(Artigos)
class ArtigosControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/artigos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.artigosInstanceList.size() == 0
        assert model.artigosInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.artigosInstance != null
    }

    void testSave() {
        controller.save()

        assert model.artigosInstance != null
        assert view == '/artigos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/artigos/show/1'
        assert controller.flash.message != null
        assert Artigos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/artigos/list'

        populateValidParams(params)
        def artigos = new Artigos(params)

        assert artigos.save() != null

        params.id = artigos.id

        def model = controller.show()

        assert model.artigosInstance == artigos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/artigos/list'

        populateValidParams(params)
        def artigos = new Artigos(params)

        assert artigos.save() != null

        params.id = artigos.id

        def model = controller.edit()

        assert model.artigosInstance == artigos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/artigos/list'

        response.reset()

        populateValidParams(params)
        def artigos = new Artigos(params)

        assert artigos.save() != null

        // test invalid parameters in update
        params.id = artigos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/artigos/edit"
        assert model.artigosInstance != null

        artigos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/artigos/show/$artigos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        artigos.clearErrors()

        populateValidParams(params)
        params.id = artigos.id
        params.version = -1
        controller.update()

        assert view == "/artigos/edit"
        assert model.artigosInstance != null
        assert model.artigosInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/artigos/list'

        response.reset()

        populateValidParams(params)
        def artigos = new Artigos(params)

        assert artigos.save() != null
        assert Artigos.count() == 1

        params.id = artigos.id

        controller.delete()

        assert Artigos.count() == 0
        assert Artigos.get(artigos.id) == null
        assert response.redirectedUrl == '/artigos/list'
    }
}
