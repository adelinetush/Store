package store



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PaymentsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Payments.list(params), model:[paymentsInstanceCount: Payments.count()]
    }

    def show(Payments paymentsInstance) {
        respond paymentsInstance
    }

    def create() {
        respond new Payments(params)
    }

    @Transactional
    def save(Payments paymentsInstance) {
        if (paymentsInstance == null) {
            notFound()
            return
        }

        if (paymentsInstance.hasErrors()) {
            respond paymentsInstance.errors, view:'create'
            return
        }

        paymentsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'payments.label', default: 'Payments'), paymentsInstance.id])
                redirect paymentsInstance
            }
            '*' { respond paymentsInstance, [status: CREATED] }
        }
    }

    def edit(Payments paymentsInstance) {
        respond paymentsInstance
    }

    @Transactional
    def update(Payments paymentsInstance) {
        if (paymentsInstance == null) {
            notFound()
            return
        }

        if (paymentsInstance.hasErrors()) {
            respond paymentsInstance.errors, view:'edit'
            return
        }

        paymentsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Payments.label', default: 'Payments'), paymentsInstance.id])
                redirect paymentsInstance
            }
            '*'{ respond paymentsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Payments paymentsInstance) {

        if (paymentsInstance == null) {
            notFound()
            return
        }

        paymentsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Payments.label', default: 'Payments'), paymentsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'payments.label', default: 'Payments'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
