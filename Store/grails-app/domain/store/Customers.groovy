package store

class Customers {
    static hasMany = [order:Orders, payment:Payments]
    static belongsTo = [district:Districts]
    
    Date dateCreated
    Date lastUpdated
    
    String firstname
    String lastname
    String country
    //String city
   
    String street
    String zip
    String phoneNumber
    String email
    String comments

    static constraints = { 
        firstname blank: false
        lastname blank: false
        email email: true, nullable: true
        //city blank: false
        district blank: false
        street blank: false
        phoneNumber blank: false
        comments size: 1..150, nullable: true
        zip blank: false
    }
    String toString(){
    return id+" - "+lastname+", "+firstname
    }
}
