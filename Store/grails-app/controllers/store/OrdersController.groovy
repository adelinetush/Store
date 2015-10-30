package store



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrdersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Orders.list(params), model:[ordersInstanceCount: Orders.count()]
    }

    def show(Orders ordersInstance) {
        respond ordersInstance
    }

    def create() {
        respond new Orders(params)
    }

    @Transactional
    def save(Orders ordersInstance) {
        if (ordersInstance == null) {
            notFound()
            return
        }

        if (ordersInstance.hasErrors()) {
            respond ordersInstance.errors, view:'create'
            return
        }

        //Create order number
        
        String generatedNumber = ""
        generatedNumber = ordersInstance.customer.id+"/"+ordersInstance.customer.district.shortcut+"/"
        generatedNumber = generatedNumber+ordersInstance.customer.district.subregion.shortcut+"/"+ordersInstance.customer.district.subregion.region.shortcut+"/"
        generatedNumber = generatedNumber+ordersInstance.orderDate.year
        ordersInstance.orderNumber = generatedNumber

        ordersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orders.label', default: 'Orders'), ordersInstance.id])
                redirect ordersInstance
            }
            '*' { respond ordersInstance, [status: CREATED] }
        }
    }

    def edit(Orders ordersInstance) {
        respond ordersInstance
    }

    @Transactional
    def update(Orders ordersInstance) {
        if (ordersInstance == null) {
            notFound()
            return
        }

        if (ordersInstance.hasErrors()) {
            respond ordersInstance.errors, view:'edit'
            return
        }

        ordersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Orders.label', default: 'Orders'), ordersInstance.id])
                redirect ordersInstance
            }
            '*'{ respond ordersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Orders ordersInstance) {

        if (ordersInstance == null) {
            notFound()
            return
        }

        ordersInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Orders.label', default: 'Orders'), ordersInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orders.label', default: 'Orders'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
