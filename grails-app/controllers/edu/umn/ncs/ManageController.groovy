package edu.umn.ncs

class ManageController {

	static allowedMethods = [find: ['POST', 'GET']]

    def index = { 
		redirect(action: "find", params: params)
	}

	def blank = {
		render ""
	}

	def find = {
		def searchString = params?.q
		// start with empty list
		def personInstanceList

		// Find by Person ID
		if (searchString) {
			log.debug "searchString: ${searchString}"
			if (searchString.isLong()){
				def searchId = searchString.toLong()
				personInstanceList = Person.findAllWhere(id: searchId)
			}
		}

		[searchString: searchString, personInstanceList: personInstanceList]
	}

	def edit = {
        def personInstance = Person.get(params.id)
        if (!personInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'person.label', default: 'Person'), params.id])}"
			redirect(action: "index")
		} 
		else {
            return [personInstance: personInstance]
        }

	}
}
