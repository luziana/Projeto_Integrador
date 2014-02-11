package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(AreasTematicasController)
@Mock(AreasTematicas)
class AreasTematicasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/areasTematicas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.areasTematicasInstanceList.size() == 0
        assert model.areasTematicasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.areasTematicasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.areasTematicasInstance != null
        assert view == '/areasTematicas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/areasTematicas/show/1'
        assert controller.flash.message != null
        assert AreasTematicas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/areasTematicas/list'

        populateValidParams(params)
        def areasTematicas = new AreasTematicas(params)

        assert areasTematicas.save() != null

        params.id = areasTematicas.id

        def model = controller.show()

        assert model.areasTematicasInstance == areasTematicas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/areasTematicas/list'

        populateValidParams(params)
        def areasTematicas = new AreasTematicas(params)

        assert areasTematicas.save() != null

        params.id = areasTematicas.id

        def model = controller.edit()

        assert model.areasTematicasInstance == areasTematicas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/areasTematicas/list'

        response.reset()

        populateValidParams(params)
        def areasTematicas = new AreasTematicas(params)

        assert areasTematicas.save() != null

        // test invalid parameters in update
        params.id = areasTematicas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/areasTematicas/edit"
        assert model.areasTematicasInstance != null

        areasTematicas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/areasTematicas/show/$areasTematicas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        areasTematicas.clearErrors()

        populateValidParams(params)
        params.id = areasTematicas.id
        params.version = -1
        controller.update()

        assert view == "/areasTematicas/edit"
        assert model.areasTematicasInstance != null
        assert model.areasTematicasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/areasTematicas/list'

        response.reset()

        populateValidParams(params)
        def areasTematicas = new AreasTematicas(params)

        assert areasTematicas.save() != null
        assert AreasTematicas.count() == 1

        params.id = areasTematicas.id

        controller.delete()

        assert AreasTematicas.count() == 0
        assert AreasTematicas.get(areasTematicas.id) == null
        assert response.redirectedUrl == '/areasTematicas/list'
    }
}
