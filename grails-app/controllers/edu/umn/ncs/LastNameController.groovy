package edu.umn.ncs

class LastNameController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [lastNameInstanceList: LastName.list(params), lastNameInstanceTotal: LastName.count()]
    }

    def create = {
        def lastNameInstance = new LastName()
        lastNameInstance.properties = params
        return [lastNameInstance: lastNameInstance]
    }

    def save = {
        def lastNameInstance = new LastName(params)
        if (lastNameInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'lastName.label', default: 'LastName'), lastNameInstance.id])}"
            redirect(action: "show", id: lastNameInstance.id)
        }
        else {
            render(view: "create", model: [lastNameInstance: lastNameInstance])
        }
    }

    def show = {
        def lastNameInstance = LastName.get(params.id)
        if (!lastNameInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
            redirect(action: "list")
        }
        else {
            [lastNameInstance: lastNameInstance]
        }
    }

    def edit = {
        def lastNameInstance = LastName.get(params.id)
        if (!lastNameInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [lastNameInstance: lastNameInstance]
        }
    }

    def update = {
        def lastNameInstance = LastName.get(params.id)
        if (lastNameInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (lastNameInstance.version > version) {
                    
                    lastNameInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'lastName.label', default: 'LastName')] as Object[], "Another user has updated this LastName while you were editing")
                    render(view: "edit", model: [lastNameInstance: lastNameInstance])
                    return
                }
            }
            lastNameInstance.properties = params
            if (!lastNameInstance.hasErrors() && lastNameInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'lastName.label', default: 'LastName'), lastNameInstance.id])}"
                redirect(action: "show", id: lastNameInstance.id)
            }
            else {
                render(view: "edit", model: [lastNameInstance: lastNameInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def lastNameInstance = LastName.get(params.id)
        if (lastNameInstance) {
            try {
                lastNameInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'lastName.label', default: 'LastName'), params.id])}"
            redirect(action: "list")
        }
    }
}
