package edu.umn.ncs

class PersonAddressController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personAddressInstanceList: PersonAddress.list(params), personAddressInstanceTotal: PersonAddress.count()]
    }

    def create = {
        def personAddressInstance = new PersonAddress()
        personAddressInstance.properties = params
        return [personAddressInstance: personAddressInstance]
    }

    def save = {
        def personAddressInstance = new PersonAddress(params)
        if (personAddressInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), personAddressInstance.id])}"
            redirect(action: "show", id: personAddressInstance.id)
        }
        else {
            render(view: "create", model: [personAddressInstance: personAddressInstance])
        }
    }

    def show = {
        def personAddressInstance = PersonAddress.get(params.id)
        if (!personAddressInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personAddressInstance: personAddressInstance]
        }
    }

    def edit = {
        def personAddressInstance = PersonAddress.get(params.id)
        if (!personAddressInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personAddressInstance: personAddressInstance]
        }
    }

    def update = {
        def personAddressInstance = PersonAddress.get(params.id)
        if (personAddressInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personAddressInstance.version > version) {
                    
                    personAddressInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'personAddress.label', default: 'PersonAddress')] as Object[], "Another user has updated this PersonAddress while you were editing")
                    render(view: "edit", model: [personAddressInstance: personAddressInstance])
                    return
                }
            }
            personAddressInstance.properties = params
            if (!personAddressInstance.hasErrors() && personAddressInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), personAddressInstance.id])}"
                redirect(action: "show", id: personAddressInstance.id)
            }
            else {
                render(view: "edit", model: [personAddressInstance: personAddressInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def personAddressInstance = PersonAddress.get(params.id)
        if (personAddressInstance) {
            try {
                personAddressInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personAddress.label', default: 'PersonAddress'), params.id])}"
            redirect(action: "list")
        }
    }
}
