package edu.umn.ncs

class StreetAddressController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [streetAddressInstanceList: StreetAddress.list(params), streetAddressInstanceTotal: StreetAddress.count()]
    }

    def create = {
        def streetAddressInstance = new StreetAddress()
        streetAddressInstance.properties = params
        return [streetAddressInstance: streetAddressInstance]
    }

    def save = {
        def streetAddressInstance = new StreetAddress(params)
        if (streetAddressInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), streetAddressInstance.id])}"
            redirect(action: "show", id: streetAddressInstance.id)
        }
        else {
            render(view: "create", model: [streetAddressInstance: streetAddressInstance])
        }
    }

    def show = {
        def streetAddressInstance = StreetAddress.get(params.id)
        if (!streetAddressInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
            redirect(action: "list")
        }
        else {
            [streetAddressInstance: streetAddressInstance]
        }
    }

    def edit = {
        def streetAddressInstance = StreetAddress.get(params.id)
        if (!streetAddressInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [streetAddressInstance: streetAddressInstance]
        }
    }

    def update = {
        def streetAddressInstance = StreetAddress.get(params.id)
        if (streetAddressInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (streetAddressInstance.version > version) {
                    
                    streetAddressInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'streetAddress.label', default: 'StreetAddress')] as Object[], "Another user has updated this StreetAddress while you were editing")
                    render(view: "edit", model: [streetAddressInstance: streetAddressInstance])
                    return
                }
            }
            streetAddressInstance.properties = params
            if (!streetAddressInstance.hasErrors() && streetAddressInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), streetAddressInstance.id])}"
                redirect(action: "show", id: streetAddressInstance.id)
            }
            else {
                render(view: "edit", model: [streetAddressInstance: streetAddressInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def streetAddressInstance = StreetAddress.get(params.id)
        if (streetAddressInstance) {
            try {
                streetAddressInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'streetAddress.label', default: 'StreetAddress'), params.id])}"
            redirect(action: "list")
        }
    }
}
