package com.testapp

class Project {

    String name

    static belongsTo = [employee:Employee]
//    static hasMany = [employees: Employee]

    static constraints = {
    }
}