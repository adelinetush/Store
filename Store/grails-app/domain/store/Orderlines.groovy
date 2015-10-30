package store

class Orderlines {

    static belongsTo=[order:Orders]
    
    Date dateCreated
    Date lastUpdated
    
    Integer pos
    String name
    BigDecimal price
    BigDecimal tax
    
    static constraints = {
    }
}
