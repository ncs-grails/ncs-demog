package edu.umn.ncs

class PersonEmailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personEmailInstanceList: PersonEmail.list(params), personEmailInstanceTotal: PersonEmail.count()]
    }

    def create = {
        def personEmailInstance = new PersonEmail()
        personEmailInstance.properties = params
        return [personEmailInstance: personEmailInstance]
    }

    def save = {
        def personEmailInstance = new PersonEmail(params)
        if (personEmailInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), personEmailInstance.id])}"
            redirect(action: "show", id: personEmailInstance.id)
        }
        else {
            render(view: "create", model: [personEmailInstance: personEmailInstance])
        }
    }

    def show = {
        def personEmailInstance = PersonEmail.get(params.id)
        if (!personEmailInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personEmailInstance: personEmailInstance]
        }
    }

    def edit = {
        def personEmailInstance = PersonEmail.get(params.id)
        if (!personEmailInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personEmailInstance: personEmailInstance]
        }
    }

    def update = {
        def personEmailInstance = PersonEmail.get(params.id)
        if (personEmailInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personEmailInstance.version > version) {
                    
                    personEmailInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'personEmail.label', default: 'PersonEmail')] as Object[], "Another user has updated this PersonEmail while you were editing")
                    render(view: "edit", model: [personEmailInstance: personEmailInstance])
                    return
                }
            }
            personEmailInstance.properties = params
            if (!personEmailInstance.hasErrors() && personEmailInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), personEmailInstance.id])}"
                redirect(action: "show", id: personEmailInstance.id)
            }
            else {
                render(view: "edit", model: [personEmailInstance: personEmailInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def personEmailInstance = PersonEmail.get(params.id)
        if (personEmailInstance) {
            try {
                personEmailInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personEmail.label', default: 'PersonEmail'), params.id])}"
            redirect(action: "list")
        }
    }
}
