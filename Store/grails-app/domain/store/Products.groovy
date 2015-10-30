package store

class Products {
    static belongsTo = [category:Categories]
    static hasMany = [order: Orders]
    
    String name
    BigDecimal price
    BigDecimal tax
    byte[] image

    static constraints = {
    }
    String toString(){
        return id+" - "+name
    }
}
