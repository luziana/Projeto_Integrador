package congic_projeto



import org.junit.*
import grails.test.mixin.*

@TestFor(SubAreaController)
@Mock(SubArea)
class SubAreaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/subArea/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.subAreaInstanceList.size() == 0
        assert model.subAreaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.subAreaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.subAreaInstance != null
        assert view == '/subArea/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/subArea/show/1'
        assert controller.flash.message != null
        assert SubArea.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/subArea/list'

        populateValidParams(params)
        def subArea = new SubArea(params)

        assert subArea.save() != null

        params.id = subArea.id

        def model = controller.show()

        assert model.subAreaInstance == subArea
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/subArea/list'

        populateValidParams(params)
        def subArea = new SubArea(params)

        assert subArea.save() != null

        params.id = subArea.id

        def model = controller.edit()

        assert model.subAreaInstance == subArea
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/subArea/list'

        response.reset()

        populateValidParams(params)
        def subArea = new SubArea(params)

        assert subArea.save() != null

        // test invalid parameters in update
        params.id = subArea.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/subArea/edit"
        assert model.subAreaInstance != null

        subArea.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/subArea/show/$subArea.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        subArea.clearErrors()

        populateValidParams(params)
        params.id = subArea.id
        params.version = -1
        controller.update()

        assert view == "/subArea/edit"
        assert model.subAreaInstance != null
        assert model.subAreaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/subArea/list'

        response.reset()

        populateValidParams(params)
        def subArea = new SubArea(params)

        assert subArea.save() != null
        assert SubArea.count() == 1

        params.id = subArea.id

        controller.delete()

        assert SubArea.count() == 0
        assert SubArea.get(subArea.id) == null
        assert response.redirectedUrl == '/subArea/list'
    }
}
