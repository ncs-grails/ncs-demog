package edu.umn.ncs

class CommentPersonController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [commentPersonInstanceList: CommentPerson.list(params), commentPersonInstanceTotal: CommentPerson.count()]
    }

    def create = {
        def commentPersonInstance = new CommentPerson()
        commentPersonInstance.properties = params
        return [commentPersonInstance: commentPersonInstance]
    }

    def save = {
        def commentPersonInstance = new CommentPerson(params)
        if (commentPersonInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), commentPersonInstance.id])}"
            redirect(action: "show", id: commentPersonInstance.id)
        }
        else {
            render(view: "create", model: [commentPersonInstance: commentPersonInstance])
        }
    }

    def show = {
        def commentPersonInstance = CommentPerson.get(params.id)
        if (!commentPersonInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
            redirect(action: "list")
        }
        else {
            [commentPersonInstance: commentPersonInstance]
        }
    }

    def edit = {
        def commentPersonInstance = CommentPerson.get(params.id)
        if (!commentPersonInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [commentPersonInstance: commentPersonInstance]
        }
    }

    def update = {
        def commentPersonInstance = CommentPerson.get(params.id)
        if (commentPersonInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (commentPersonInstance.version > version) {
                    
                    commentPersonInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'commentPerson.label', default: 'CommentPerson')] as Object[], "Another user has updated this CommentPerson while you were editing")
                    render(view: "edit", model: [commentPersonInstance: commentPersonInstance])
                    return
                }
            }
            commentPersonInstance.properties = params
            if (!commentPersonInstance.hasErrors() && commentPersonInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), commentPersonInstance.id])}"
                redirect(action: "show", id: commentPersonInstance.id)
            }
            else {
                render(view: "edit", model: [commentPersonInstance: commentPersonInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def commentPersonInstance = CommentPerson.get(params.id)
        if (commentPersonInstance) {
            try {
                commentPersonInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'commentPerson.label', default: 'CommentPerson'), params.id])}"
            redirect(action: "list")
        }
    }
}
