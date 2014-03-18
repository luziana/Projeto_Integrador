package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(MinicursoController)
@Mock(Minicurso)
class MinicursoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/minicurso/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.minicursoInstanceList.size() == 0
        assert model.minicursoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.minicursoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.minicursoInstance != null
        assert view == '/minicurso/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/minicurso/show/1'
        assert controller.flash.message != null
        assert Minicurso.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/minicurso/list'

        populateValidParams(params)
        def minicurso = new Minicurso(params)

        assert minicurso.save() != null

        params.id = minicurso.id

        def model = controller.show()

        assert model.minicursoInstance == minicurso
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/minicurso/list'

        populateValidParams(params)
        def minicurso = new Minicurso(params)

        assert minicurso.save() != null

        params.id = minicurso.id

        def model = controller.edit()

        assert model.minicursoInstance == minicurso
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/minicurso/list'

        response.reset()

        populateValidParams(params)
        def minicurso = new Minicurso(params)

        assert minicurso.save() != null

        // test invalid parameters in update
        params.id = minicurso.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/minicurso/edit"
        assert model.minicursoInstance != null

        minicurso.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/minicurso/show/$minicurso.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        minicurso.clearErrors()

        populateValidParams(params)
        params.id = minicurso.id
        params.version = -1
        controller.update()

        assert view == "/minicurso/edit"
        assert model.minicursoInstance != null
        assert model.minicursoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/minicurso/list'

        response.reset()

        populateValidParams(params)
        def minicurso = new Minicurso(params)

        assert minicurso.save() != null
        assert Minicurso.count() == 1

        params.id = minicurso.id

        controller.delete()

        assert Minicurso.count() == 0
        assert Minicurso.get(minicurso.id) == null
        assert response.redirectedUrl == '/minicurso/list'
    }
}
