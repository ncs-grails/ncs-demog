package edu.umn.ncs

class CommentPersonContactController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [commentPersonContactInstanceList: CommentPersonContact.list(params), commentPersonContactInstanceTotal: CommentPersonContact.count()]
    }

    def create = {
        def commentPersonContactInstance = new CommentPersonContact()
        commentPersonContactInstance.properties = params
        return [commentPersonContactInstance: commentPersonContactInstance]
    }

    def save = {
        def commentPersonContactInstance = new CommentPersonContact(params)
        if (commentPersonContactInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), commentPersonContactInstance.id])}"
            redirect(action: "show", id: commentPersonContactInstance.id)
        }
        else {
            render(view: "create", model: [commentPersonContactInstance: commentPersonContactInstance])
        }
    }

    def show = {
        def commentPersonContactInstance = CommentPersonContact.get(params.id)
        if (!commentPersonContactInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
            redirect(action: "list")
        }
        else {
            [commentPersonContactInstance: commentPersonContactInstance]
        }
    }

    def edit = {
        def commentPersonContactInstance = CommentPersonContact.get(params.id)
        if (!commentPersonContactInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [commentPersonContactInstance: commentPersonContactInstance]
        }
    }

    def update = {
        def commentPersonContactInstance = CommentPersonContact.get(params.id)
        if (commentPersonContactInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (commentPersonContactInstance.version > version) {
                    
                    commentPersonContactInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'commentPersonContact.label', default: 'CommentPersonContact')] as Object[], "Another user has updated this CommentPersonContact while you were editing")
                    render(view: "edit", model: [commentPersonContactInstance: commentPersonContactInstance])
                    return
                }
            }
            commentPersonContactInstance.properties = params
            if (!commentPersonContactInstance.hasErrors() && commentPersonContactInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), commentPersonContactInstance.id])}"
                redirect(action: "show", id: commentPersonContactInstance.id)
            }
            else {
                render(view: "edit", model: [commentPersonContactInstance: commentPersonContactInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def commentPersonContactInstance = CommentPersonContact.get(params.id)
        if (commentPersonContactInstance) {
            try {
                commentPersonContactInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPersonContact.label', default: 'CommentPersonContact'), params.id])}"
            redirect(action: "list")
        }
    }
}
