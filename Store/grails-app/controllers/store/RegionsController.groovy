package store



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegionsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Regions.list(params), model:[regionsInstanceCount: Regions.count()]
    }

    def show(Regions regionsInstance) {
        respond regionsInstance
    }

    def create() {
        respond new Regions(params)
    }

    @Transactional
    def save(Regions regionsInstance) {
        if (regionsInstance == null) {
            notFound()
            return
        }

        if (regionsInstance.hasErrors()) {
            respond regionsInstance.errors, view:'create'
            return
        }

        regionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'regions.label', default: 'Regions'), regionsInstance.id])
                redirect regionsInstance
            }
            '*' { respond regionsInstance, [status: CREATED] }
        }
    }

    def edit(Regions regionsInstance) {
        respond regionsInstance
    }

    @Transactional
    def update(Regions regionsInstance) {
        if (regionsInstance == null) {
            notFound()
            return
        }

        if (regionsInstance.hasErrors()) {
            respond regionsInstance.errors, view:'edit'
            return
        }

        regionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Regions.label', default: 'Regions'), regionsInstance.id])
                redirect regionsInstance
            }
            '*'{ respond regionsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Regions regionsInstance) {

        if (regionsInstance == null) {
            notFound()
            return
        }

        regionsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Regions.label', default: 'Regions'), regionsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'regions.label', default: 'Regions'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
