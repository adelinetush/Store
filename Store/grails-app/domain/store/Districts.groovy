package store

class Districts {
    static belongsTo = [subregion:SubRegions]
    static hasMany = [customer:Customers]
    String name
    String shortcut

    static constraints = {
    }
    String toString(){
    return id+" - "+name
    }
}
