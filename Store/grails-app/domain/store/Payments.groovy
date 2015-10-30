package store

class Payments {
    static belongsTo = [customer:Customers]
    
    PaymentMethod method
    String amount
    String currency
    
    static constraints = {
    }
}
