package edu.umn.ncs

class SourceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sourceInstanceList: Source.list(params), sourceInstanceTotal: Source.count()]
    }

    def create = {
        def sourceInstance = new Source()
        sourceInstance.properties = params
        return [sourceInstance: sourceInstance]
    }

    def save = {
        def sourceInstance = new Source(params)
        if (sourceInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'source.label', default: 'Source'), sourceInstance.id])}"
            redirect(action: "show", id: sourceInstance.id)
        }
        else {
            render(view: "create", model: [sourceInstance: sourceInstance])
        }
    }

    def show = {
        def sourceInstance = Source.get(params.id)
        if (!sourceInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
            redirect(action: "list")
        }
        else {
            [sourceInstance: sourceInstance]
        }
    }

    def edit = {
        def sourceInstance = Source.get(params.id)
        if (!sourceInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [sourceInstance: sourceInstance]
        }
    }

    def update = {
        def sourceInstance = Source.get(params.id)
        if (sourceInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (sourceInstance.version > version) {
                    
                    sourceInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'source.label', default: 'Source')] as Object[], "Another user has updated this Source while you were editing")
                    render(view: "edit", model: [sourceInstance: sourceInstance])
                    return
                }
            }
            sourceInstance.properties = params
            if (!sourceInstance.hasErrors() && sourceInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'source.label', default: 'Source'), sourceInstance.id])}"
                redirect(action: "show", id: sourceInstance.id)
            }
            else {
                render(view: "edit", model: [sourceInstance: sourceInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def sourceInstance = Source.get(params.id)
        if (sourceInstance) {
            try {
                sourceInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'source.label', default: 'Source'), params.id])}"
            redirect(action: "list")
        }
    }
}
