package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(Areas_TematicasController)
@Mock(Areas_Tematicas)
class Areas_TematicasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/areas_Tematicas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.areas_TematicasInstanceList.size() == 0
        assert model.areas_TematicasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.areas_TematicasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.areas_TematicasInstance != null
        assert view == '/areas_Tematicas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/areas_Tematicas/show/1'
        assert controller.flash.message != null
        assert Areas_Tematicas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/areas_Tematicas/list'

        populateValidParams(params)
        def areas_Tematicas = new Areas_Tematicas(params)

        assert areas_Tematicas.save() != null

        params.id = areas_Tematicas.id

        def model = controller.show()

        assert model.areas_TematicasInstance == areas_Tematicas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/areas_Tematicas/list'

        populateValidParams(params)
        def areas_Tematicas = new Areas_Tematicas(params)

        assert areas_Tematicas.save() != null

        params.id = areas_Tematicas.id

        def model = controller.edit()

        assert model.areas_TematicasInstance == areas_Tematicas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/areas_Tematicas/list'

        response.reset()

        populateValidParams(params)
        def areas_Tematicas = new Areas_Tematicas(params)

        assert areas_Tematicas.save() != null

        // test invalid parameters in update
        params.id = areas_Tematicas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/areas_Tematicas/edit"
        assert model.areas_TematicasInstance != null

        areas_Tematicas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/areas_Tematicas/show/$areas_Tematicas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        areas_Tematicas.clearErrors()

        populateValidParams(params)
        params.id = areas_Tematicas.id
        params.version = -1
        controller.update()

        assert view == "/areas_Tematicas/edit"
        assert model.areas_TematicasInstance != null
        assert model.areas_TematicasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/areas_Tematicas/list'

        response.reset()

        populateValidParams(params)
        def areas_Tematicas = new Areas_Tematicas(params)

        assert areas_Tematicas.save() != null
        assert Areas_Tematicas.count() == 1

        params.id = areas_Tematicas.id

        controller.delete()

        assert Areas_Tematicas.count() == 0
        assert Areas_Tematicas.get(areas_Tematicas.id) == null
        assert response.redirectedUrl == '/areas_Tematicas/list'
    }
}
