package store

class Orders {
    
    static belongsTo = [customer:Customers]
    static hasMany = [orderline:Orderlines]
    
    Date dateCreated
    Date lastUpdated
    
    String orderNumber = "blank"
    Date orderDate
    Date paymentDate
    Date shippingDate

    static constraints = {
    }
    String toString(){
        return id+" - "+orderNumber
    }
}
