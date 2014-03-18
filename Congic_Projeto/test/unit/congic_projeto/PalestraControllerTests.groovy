package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(PalestraController)
@Mock(Palestra)
class PalestraControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/palestra/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.palestraInstanceList.size() == 0
        assert model.palestraInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.palestraInstance != null
    }

    void testSave() {
        controller.save()

        assert model.palestraInstance != null
        assert view == '/palestra/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/palestra/show/1'
        assert controller.flash.message != null
        assert Palestra.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/palestra/list'

        populateValidParams(params)
        def palestra = new Palestra(params)

        assert palestra.save() != null

        params.id = palestra.id

        def model = controller.show()

        assert model.palestraInstance == palestra
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/palestra/list'

        populateValidParams(params)
        def palestra = new Palestra(params)

        assert palestra.save() != null

        params.id = palestra.id

        def model = controller.edit()

        assert model.palestraInstance == palestra
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/palestra/list'

        response.reset()

        populateValidParams(params)
        def palestra = new Palestra(params)

        assert palestra.save() != null

        // test invalid parameters in update
        params.id = palestra.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/palestra/edit"
        assert model.palestraInstance != null

        palestra.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/palestra/show/$palestra.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        palestra.clearErrors()

        populateValidParams(params)
        params.id = palestra.id
        params.version = -1
        controller.update()

        assert view == "/palestra/edit"
        assert model.palestraInstance != null
        assert model.palestraInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/palestra/list'

        response.reset()

        populateValidParams(params)
        def palestra = new Palestra(params)

        assert palestra.save() != null
        assert Palestra.count() == 1

        params.id = palestra.id

        controller.delete()

        assert Palestra.count() == 0
        assert Palestra.get(palestra.id) == null
        assert response.redirectedUrl == '/palestra/list'
    }
}
