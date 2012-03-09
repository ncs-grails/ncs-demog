package edu.umn.ncs

class PersonPhoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personPhoneInstanceList: PersonPhone.list(params), personPhoneInstanceTotal: PersonPhone.count()]
    }

    def create = {
        def personPhoneInstance = new PersonPhone()
        personPhoneInstance.properties = params
        return [personPhoneInstance: personPhoneInstance]
    }

    def save = {
        def personPhoneInstance = new PersonPhone(params)
        if (personPhoneInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), personPhoneInstance.id])}"
            redirect(action: "show", id: personPhoneInstance.id)
        }
        else {
            render(view: "create", model: [personPhoneInstance: personPhoneInstance])
        }
    }

    def show = {
        def personPhoneInstance = PersonPhone.get(params.id)
        if (!personPhoneInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personPhoneInstance: personPhoneInstance]
        }
    }

    def edit = {
        def personPhoneInstance = PersonPhone.get(params.id)
        if (!personPhoneInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personPhoneInstance: personPhoneInstance]
        }
    }

    def update = {
        def personPhoneInstance = PersonPhone.get(params.id)
        if (personPhoneInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personPhoneInstance.version > version) {
                    
                    personPhoneInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'personPhone.label', default: 'PersonPhone')] as Object[], "Another user has updated this PersonPhone while you were editing")
                    render(view: "edit", model: [personPhoneInstance: personPhoneInstance])
                    return
                }
            }
            personPhoneInstance.properties = params
            if (!personPhoneInstance.hasErrors() && personPhoneInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), personPhoneInstance.id])}"
                redirect(action: "show", id: personPhoneInstance.id)
            }
            else {
                render(view: "edit", model: [personPhoneInstance: personPhoneInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def personPhoneInstance = PersonPhone.get(params.id)
        if (personPhoneInstance) {
            try {
                personPhoneInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personPhone.label', default: 'PersonPhone'), params.id])}"
            redirect(action: "list")
        }
    }
}
