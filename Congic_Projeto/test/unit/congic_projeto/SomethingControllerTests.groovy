package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(SomethingController)
@Mock(Something)
class SomethingControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/something/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.somethingInstanceList.size() == 0
        assert model.somethingInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.somethingInstance != null
    }

    void testSave() {
        controller.save()

        assert model.somethingInstance != null
        assert view == '/something/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/something/show/1'
        assert controller.flash.message != null
        assert Something.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/something/list'

        populateValidParams(params)
        def something = new Something(params)

        assert something.save() != null

        params.id = something.id

        def model = controller.show()

        assert model.somethingInstance == something
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/something/list'

        populateValidParams(params)
        def something = new Something(params)

        assert something.save() != null

        params.id = something.id

        def model = controller.edit()

        assert model.somethingInstance == something
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/something/list'

        response.reset()

        populateValidParams(params)
        def something = new Something(params)

        assert something.save() != null

        // test invalid parameters in update
        params.id = something.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/something/edit"
        assert model.somethingInstance != null

        something.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/something/show/$something.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        something.clearErrors()

        populateValidParams(params)
        params.id = something.id
        params.version = -1
        controller.update()

        assert view == "/something/edit"
        assert model.somethingInstance != null
        assert model.somethingInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/something/list'

        response.reset()

        populateValidParams(params)
        def something = new Something(params)

        assert something.save() != null
        assert Something.count() == 1

        params.id = something.id

        controller.delete()

        assert Something.count() == 0
        assert Something.get(something.id) == null
        assert response.redirectedUrl == '/something/list'
    }
}
