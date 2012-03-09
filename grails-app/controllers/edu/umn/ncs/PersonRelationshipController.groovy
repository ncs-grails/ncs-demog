package edu.umn.ncs

class PersonRelationshipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personRelationshipInstanceList: PersonRelationship.list(params), personRelationshipInstanceTotal: PersonRelationship.count()]
    }

    def create = {
        def personRelationshipInstance = new PersonRelationship()
        personRelationshipInstance.properties = params
        return [personRelationshipInstance: personRelationshipInstance]
    }

    def save = {
        def personRelationshipInstance = new PersonRelationship(params)
        if (personRelationshipInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), personRelationshipInstance.id])}"
            redirect(action: "show", id: personRelationshipInstance.id)
        }
        else {
            render(view: "create", model: [personRelationshipInstance: personRelationshipInstance])
        }
    }

    def show = {
        def personRelationshipInstance = PersonRelationship.get(params.id)
        if (!personRelationshipInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personRelationshipInstance: personRelationshipInstance]
        }
    }

    def edit = {
        def personRelationshipInstance = PersonRelationship.get(params.id)
        if (!personRelationshipInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personRelationshipInstance: personRelationshipInstance]
        }
    }

    def update = {
        def personRelationshipInstance = PersonRelationship.get(params.id)
        if (personRelationshipInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personRelationshipInstance.version > version) {
                    
                    personRelationshipInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'personRelationship.label', default: 'PersonRelationship')] as Object[], "Another user has updated this PersonRelationship while you were editing")
                    render(view: "edit", model: [personRelationshipInstance: personRelationshipInstance])
                    return
                }
            }
            personRelationshipInstance.properties = params
            if (!personRelationshipInstance.hasErrors() && personRelationshipInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), personRelationshipInstance.id])}"
                redirect(action: "show", id: personRelationshipInstance.id)
            }
            else {
                render(view: "edit", model: [personRelationshipInstance: personRelationshipInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def personRelationshipInstance = PersonRelationship.get(params.id)
        if (personRelationshipInstance) {
            try {
                personRelationshipInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personRelationship.label', default: 'PersonRelationship'), params.id])}"
            redirect(action: "list")
        }
    }
}
