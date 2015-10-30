package store

class Categories {
    static hasMany = [product:Products]
    
    String name

    static constraints = {
    }
    String toString(){
    return id+" - "+name
    }
}
