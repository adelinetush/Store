package store

class SubRegions {
    static belongsTo = [region:Regions]
    static hasMany = [district:Districts]
    
    String name
    String shortcut


    static constraints = {
    }
    String toString(){
    return id+" - "+name
    }
}
