package store



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DistrictsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Districts.list(params), model:[districtsInstanceCount: Districts.count()]
    }

    def show(Districts districtsInstance) {
        respond districtsInstance
    }

    def create() {
        respond new Districts(params)
    }

    @Transactional
    def save(Districts districtsInstance) {
        if (districtsInstance == null) {
            notFound()
            return
        }

        if (districtsInstance.hasErrors()) {
            respond districtsInstance.errors, view:'create'
            return
        }

        districtsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'districts.label', default: 'Districts'), districtsInstance.id])
                redirect districtsInstance
            }
            '*' { respond districtsInstance, [status: CREATED] }
        }
    }

    def edit(Districts districtsInstance) {
        respond districtsInstance
    }

    @Transactional
    def update(Districts districtsInstance) {
        if (districtsInstance == null) {
            notFound()
            return
        }

        if (districtsInstance.hasErrors()) {
            respond districtsInstance.errors, view:'edit'
            return
        }

        districtsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Districts.label', default: 'Districts'), districtsInstance.id])
                redirect districtsInstance
            }
            '*'{ respond districtsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Districts districtsInstance) {

        if (districtsInstance == null) {
            notFound()
            return
        }

        districtsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Districts.label', default: 'Districts'), districtsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'districts.label', default: 'Districts'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
