package edu.umn.ncs

class HouseholdController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [householdInstanceList: Household.list(params), householdInstanceTotal: Household.count()]
    }

    def create = {
        def householdInstance = new Household()
        householdInstance.properties = params
        return [householdInstance: householdInstance]
    }

    def save = {
        def householdInstance = new Household(params)
        if (householdInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'household.label', default: 'Household'), householdInstance.id])}"
            redirect(action: "show", id: householdInstance.id)
        }
        else {
            render(view: "create", model: [householdInstance: householdInstance])
        }
    }

    def show = {
        def householdInstance = Household.get(params.id)
        if (!householdInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
            redirect(action: "list")
        }
        else {
            [householdInstance: householdInstance]
        }
    }

    def edit = {
        def householdInstance = Household.get(params.id)
        if (!householdInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [householdInstance: householdInstance]
        }
    }

    def update = {
        def householdInstance = Household.get(params.id)
        if (householdInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (householdInstance.version > version) {
                    
                    householdInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'household.label', default: 'Household')] as Object[], "Another user has updated this Household while you were editing")
                    render(view: "edit", model: [householdInstance: householdInstance])
                    return
                }
            }
            householdInstance.properties = params
            if (!householdInstance.hasErrors() && householdInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'household.label', default: 'Household'), householdInstance.id])}"
                redirect(action: "show", id: householdInstance.id)
            }
            else {
                render(view: "edit", model: [householdInstance: householdInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def householdInstance = Household.get(params.id)
        if (householdInstance) {
            try {
                householdInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'household.label', default: 'Household'), params.id])}"
            redirect(action: "list")
        }
    }
}
