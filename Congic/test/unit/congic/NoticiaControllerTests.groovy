package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(NoticiaController)
@Mock(Noticia)
class NoticiaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/noticia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.noticiaInstanceList.size() == 0
        assert model.noticiaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.noticiaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.noticiaInstance != null
        assert view == '/noticia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/noticia/show/1'
        assert controller.flash.message != null
        assert Noticia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/noticia/list'

        populateValidParams(params)
        def noticia = new Noticia(params)

        assert noticia.save() != null

        params.id = noticia.id

        def model = controller.show()

        assert model.noticiaInstance == noticia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/noticia/list'

        populateValidParams(params)
        def noticia = new Noticia(params)

        assert noticia.save() != null

        params.id = noticia.id

        def model = controller.edit()

        assert model.noticiaInstance == noticia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/noticia/list'

        response.reset()

        populateValidParams(params)
        def noticia = new Noticia(params)

        assert noticia.save() != null

        // test invalid parameters in update
        params.id = noticia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/noticia/edit"
        assert model.noticiaInstance != null

        noticia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/noticia/show/$noticia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        noticia.clearErrors()

        populateValidParams(params)
        params.id = noticia.id
        params.version = -1
        controller.update()

        assert view == "/noticia/edit"
        assert model.noticiaInstance != null
        assert model.noticiaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/noticia/list'

        response.reset()

        populateValidParams(params)
        def noticia = new Noticia(params)

        assert noticia.save() != null
        assert Noticia.count() == 1

        params.id = noticia.id

        controller.delete()

        assert Noticia.count() == 0
        assert Noticia.get(noticia.id) == null
        assert response.redirectedUrl == '/noticia/list'
    }
}
