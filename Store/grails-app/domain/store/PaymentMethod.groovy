package store

class PaymentMethod {
    
    String name

    static constraints = {
    }
    String toString(){
        return id+" - "+name
    }
}
