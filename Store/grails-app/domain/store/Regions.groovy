package store

class Regions {
    static hasMany = [subregion:SubRegions]
    
    String name
    String shortcut


    static constraints = {
    }
    String toString(){
    return id+" - "+name
    }
}
