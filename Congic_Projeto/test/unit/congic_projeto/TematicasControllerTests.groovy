package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(TematicasController)
@Mock(Tematicas)
class TematicasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tematicas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tematicasInstanceList.size() == 0
        assert model.tematicasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tematicasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tematicasInstance != null
        assert view == '/tematicas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tematicas/show/1'
        assert controller.flash.message != null
        assert Tematicas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tematicas/list'

        populateValidParams(params)
        def tematicas = new Tematicas(params)

        assert tematicas.save() != null

        params.id = tematicas.id

        def model = controller.show()

        assert model.tematicasInstance == tematicas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tematicas/list'

        populateValidParams(params)
        def tematicas = new Tematicas(params)

        assert tematicas.save() != null

        params.id = tematicas.id

        def model = controller.edit()

        assert model.tematicasInstance == tematicas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tematicas/list'

        response.reset()

        populateValidParams(params)
        def tematicas = new Tematicas(params)

        assert tematicas.save() != null

        // test invalid parameters in update
        params.id = tematicas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tematicas/edit"
        assert model.tematicasInstance != null

        tematicas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tematicas/show/$tematicas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tematicas.clearErrors()

        populateValidParams(params)
        params.id = tematicas.id
        params.version = -1
        controller.update()

        assert view == "/tematicas/edit"
        assert model.tematicasInstance != null
        assert model.tematicasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tematicas/list'

        response.reset()

        populateValidParams(params)
        def tematicas = new Tematicas(params)

        assert tematicas.save() != null
        assert Tematicas.count() == 1

        params.id = tematicas.id

        controller.delete()

        assert Tematicas.count() == 0
        assert Tematicas.get(tematicas.id) == null
        assert response.redirectedUrl == '/tematicas/list'
    }
}
