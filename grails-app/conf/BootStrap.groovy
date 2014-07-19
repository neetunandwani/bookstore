import com.testapp.Role
import com.testapp.User
import com.testapp.UserRole

import javax.servlet.http.HttpServletRequest

class BootStrap {

    def init = { servletContext ->

        HttpServletRequest.metaClass {
            getRemoteIPAddress = {
                delegate.getHeader("x-forwarded-for") ?: delegate.remoteAddr
            }
            isAjax = {
                delegate.getHeader("X-Requested-With") == "XMLHttpRequest"
            }

            getSiteUrl = {
                return (delegate.scheme + "://" + delegate.serverName + ":" + delegate.serverPort + delegate.getContextPath())
            }

            getUserAgent = {
                return delegate.getHeader("User-Agent")
            }
        }

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testUser = new User(username: 'me', password: 'password')
        testUser.save(flush: true)

        UserRole.create testUser, adminRole, true

        assert User.count() == 1
        assert Role.count() == 2
        assert UserRole.count() == 1
    }
}