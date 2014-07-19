import org.apache.catalina.core.ApplicationContext
import org.codehaus.groovy.grails.commons.ApplicationHolder
import org.codehaus.groovy.grails.commons.ConfigurationHolder

import javax.security.auth.login.Configuration

dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "igdefault"
    //configure DBCP
    properties {
        maxActive = 50
        maxIdle = 25
        minIdle = 1
        initialSize = 1
        minEvictableIdleTimeMillis = 60000
        timeBetweenEvictionRunsMillis = 60000
        numTestsPerEvictionRun = 3
        maxWait = 10000

        testOnBorrow = true
        testWhileIdle = true
        testOnReturn = false

        validationQuery = "SELECT 1"
    }
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://127.0.0.1:3306/bookstore?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis = 1800000
                timeBetweenEvictionRunsMillis = 1800000
                numTestsPerEvictionRun = 3
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = true
                validationQuery = "SELECT 1"
            }
        }
    }
}
