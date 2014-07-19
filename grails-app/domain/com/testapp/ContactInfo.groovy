package com.testapp


class ContactInfo {
    String firstName
    String lastName
    String street1
    String street2
    String city
    String country
    String zipCode
    String mobilePhone
    String homePhone
    String fax
    Email email
    boolean registered = false
    boolean verified = false
//    List<Email> emails = []

    static hasMany = [emails: Email]
    static fetchMode = [emails: 'eager']
    static constraints = {
        firstName nullable: true, blank: true, maxSize: 50
        lastName nullable: true, blank: true, minSize: 2, maxSize: 50
        street1 nullable: true, blank: true, maxSize: 55
        street2 nullable: true, maxSize: 50
        city nullable: true, blank: true, maxSize: 40
        country nullable: true, blank: true
        zipCode nullable: true, blank: true, minSize: 5, maxSize: 10
        email nullable: true, blank: true
        mobilePhone nullable: true, minSize: 8
        homePhone nullable: true, minSize: 8
        fax nullable: true
    }

}

