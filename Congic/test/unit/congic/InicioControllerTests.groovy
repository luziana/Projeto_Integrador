package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(InicioController)
@Mock(Inicio)
class InicioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/inicio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.inicioInstanceList.size() == 0
        assert model.inicioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.inicioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.inicioInstance != null
        assert view == '/inicio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/inicio/show/1'
        assert controller.flash.message != null
        assert Inicio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/inicio/list'

        populateValidParams(params)
        def inicio = new Inicio(params)

        assert inicio.save() != null

        params.id = inicio.id

        def model = controller.show()

        assert model.inicioInstance == inicio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/inicio/list'

        populateValidParams(params)
        def inicio = new Inicio(params)

        assert inicio.save() != null

        params.id = inicio.id

        def model = controller.edit()

        assert model.inicioInstance == inicio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/inicio/list'

        response.reset()

        populateValidParams(params)
        def inicio = new Inicio(params)

        assert inicio.save() != null

        // test invalid parameters in update
        params.id = inicio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/inicio/edit"
        assert model.inicioInstance != null

        inicio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/inicio/show/$inicio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        inicio.clearErrors()

        populateValidParams(params)
        params.id = inicio.id
        params.version = -1
        controller.update()

        assert view == "/inicio/edit"
        assert model.inicioInstance != null
        assert model.inicioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/inicio/list'

        response.reset()

        populateValidParams(params)
        def inicio = new Inicio(params)

        assert inicio.save() != null
        assert Inicio.count() == 1

        params.id = inicio.id

        controller.delete()

        assert Inicio.count() == 0
        assert Inicio.get(inicio.id) == null
        assert response.redirectedUrl == '/inicio/list'
    }
}
