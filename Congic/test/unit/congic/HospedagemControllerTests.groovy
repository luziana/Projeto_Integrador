package congic



import org.junit.*
import grails.test.mixin.*

@TestFor(HospedagemController)
@Mock(Hospedagem)
class HospedagemControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/hospedagem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.hospedagemInstanceList.size() == 0
        assert model.hospedagemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.hospedagemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.hospedagemInstance != null
        assert view == '/hospedagem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/hospedagem/show/1'
        assert controller.flash.message != null
        assert Hospedagem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/hospedagem/list'

        populateValidParams(params)
        def hospedagem = new Hospedagem(params)

        assert hospedagem.save() != null

        params.id = hospedagem.id

        def model = controller.show()

        assert model.hospedagemInstance == hospedagem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/hospedagem/list'

        populateValidParams(params)
        def hospedagem = new Hospedagem(params)

        assert hospedagem.save() != null

        params.id = hospedagem.id

        def model = controller.edit()

        assert model.hospedagemInstance == hospedagem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/hospedagem/list'

        response.reset()

        populateValidParams(params)
        def hospedagem = new Hospedagem(params)

        assert hospedagem.save() != null

        // test invalid parameters in update
        params.id = hospedagem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/hospedagem/edit"
        assert model.hospedagemInstance != null

        hospedagem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/hospedagem/show/$hospedagem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        hospedagem.clearErrors()

        populateValidParams(params)
        params.id = hospedagem.id
        params.version = -1
        controller.update()

        assert view == "/hospedagem/edit"
        assert model.hospedagemInstance != null
        assert model.hospedagemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/hospedagem/list'

        response.reset()

        populateValidParams(params)
        def hospedagem = new Hospedagem(params)

        assert hospedagem.save() != null
        assert Hospedagem.count() == 1

        params.id = hospedagem.id

        controller.delete()

        assert Hospedagem.count() == 0
        assert Hospedagem.get(hospedagem.id) == null
        assert response.redirectedUrl == '/hospedagem/list'
    }
}
