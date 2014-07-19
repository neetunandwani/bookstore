package bookstore

class ApplicationFilters {

    def filters = {
        all(controller: '*', action: '*') {
            before = {
                println("heloo>>>"+request.getRemoteIPAddress()+">>>")
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
