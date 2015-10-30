package store



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubRegionsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SubRegions.list(params), model:[subRegionsInstanceCount: SubRegions.count()]
    }

    def show(SubRegions subRegionsInstance) {
        respond subRegionsInstance
    }

    def create() {
        respond new SubRegions(params)
    }

    @Transactional
    def save(SubRegions subRegionsInstance) {
        if (subRegionsInstance == null) {
            notFound()
            return
        }

        if (subRegionsInstance.hasErrors()) {
            respond subRegionsInstance.errors, view:'create'
            return
        }

        subRegionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subRegions.label', default: 'SubRegions'), subRegionsInstance.id])
                redirect subRegionsInstance
            }
            '*' { respond subRegionsInstance, [status: CREATED] }
        }
    }

    def edit(SubRegions subRegionsInstance) {
        respond subRegionsInstance
    }

    @Transactional
    def update(SubRegions subRegionsInstance) {
        if (subRegionsInstance == null) {
            notFound()
            return
        }

        if (subRegionsInstance.hasErrors()) {
            respond subRegionsInstance.errors, view:'edit'
            return
        }

        subRegionsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SubRegions.label', default: 'SubRegions'), subRegionsInstance.id])
                redirect subRegionsInstance
            }
            '*'{ respond subRegionsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SubRegions subRegionsInstance) {

        if (subRegionsInstance == null) {
            notFound()
            return
        }

        subRegionsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SubRegions.label', default: 'SubRegions'), subRegionsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subRegions.label', default: 'SubRegions'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
