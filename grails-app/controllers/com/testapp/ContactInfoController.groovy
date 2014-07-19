package com.testapp

import org.springframework.dao.DataIntegrityViolationException

class ContactInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def sessionFactory

    def index() {

        println "=========================================================================="
        render(view: 'upload', model: [user: User.get(1)])

//        List<ContactInfo> contactInfoList = ContactInfo.findAllByEmailNotEqualOrEmailIsNotNull("")
//        render(view: 'list',model: [contactInfoList :contactInfoList ])
//        println "contact found: ${contactInfoList.size()}"
//        contactInfoList.eachWithIndex { contactInfo, index ->
//            if (contactInfo.email) {
//                contactInfo.emails.add(contactInfo.email)
//                println "saving contact info email for index: ${index}"
//                contactInfo.save(failOnError: true)
//            } else {
//                println "email address not found for contact info ${contactInfo.id}"
//            }
//            if (index % 50 == 0) {
//                println "gorm cleanup at index: ${index}"
//                cleanUpGorm()
//            }
//        }
//        println "=========================================================================="
    }

    def upload(User user, Integer age) {
        println ">>>>>>>>>>>>>>>>>>."
        println("params:::::::::${params}")
        println("age::::::::::::${age}")
        println("user::::::${User.get(1)}")
        println user.get(params.user.id)
        def f = params.myFile
        render f.inputStream.text
    }

    void cleanUpGorm() {
        def session = sessionFactory.currentSession
        session.flush()
        session.clear()
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contactInfoInstanceList: ContactInfo.list(params), contactInfoInstanceTotal: ContactInfo.count()]
    }

    def create() {
        [contactInfoInstance: new ContactInfo(params)]
    }

    def save() {
        def contactInfoInstance = new ContactInfo(params)
        if (!contactInfoInstance.save(flush: true)) {
            render(view: "create", model: [contactInfoInstance: contactInfoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), contactInfoInstance.id])
        redirect(action: "show", id: contactInfoInstance.id)
    }

    def show(Long id) {
        def contactInfoInstance = ContactInfo.get(id)
        if (!contactInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "list")
            return
        }

        [contactInfoInstance: contactInfoInstance]
    }

    def edit(Long id) {
        def contactInfoInstance = ContactInfo.get(id)
        if (!contactInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "list")
            return
        }

        [contactInfoInstance: contactInfoInstance]
    }

    def update(Long id, Long version) {
        def contactInfoInstance = ContactInfo.get(id)
        if (!contactInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contactInfoInstance.version > version) {
                contactInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'contactInfo.label', default: 'ContactInfo')] as Object[],
                        "Another user has updated this ContactInfo while you were editing")
                render(view: "edit", model: [contactInfoInstance: contactInfoInstance])
                return
            }
        }

        contactInfoInstance.properties = params

        if (!contactInfoInstance.save(flush: true)) {
            render(view: "edit", model: [contactInfoInstance: contactInfoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), contactInfoInstance.id])
        redirect(action: "show", id: contactInfoInstance.id)
    }

    def delete(Long id) {
        def contactInfoInstance = ContactInfo.get(id)
        if (!contactInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "list")
            return
        }

        try {
            contactInfoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contactInfo.label', default: 'ContactInfo'), id])
            redirect(action: "show", id: id)
        }
    }
}
