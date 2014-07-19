package com.testapp

class Email {

    String email

    static belongsTo = [contactInfo: ContactInfo]
    static constraints = {
    }
}
