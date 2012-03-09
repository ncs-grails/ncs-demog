grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
		grailsRepo "http://svn.cccs.umn.edu/grails-plugins"
		grailsRepo "http://svn.cccs.umn.edu/ncs-grails-plugins"


        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        //mavenLocal()
        mavenCentral()
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

        runtime 'mysql:mysql-connector-java:5.1.13'
    }
	plugins {
		runtime ':address-lookup-zpfour:0.1.2'
		runtime ':audit-logging:0.5.4'
		runtime ':barcode4j:0.2'
		runtime ':csv:0.3'
		runtime ':joda-time:1.0'
		runtime ':jquery:1.4.3.2'
		runtime ':ncs-appointment:0.2'
		runtime ':ncs-calling:0.1'
		runtime ':ncs-event:1.1'
		runtime ':ncs-norc-link:0.4'
		runtime ':ncs-people:0.8'
		runtime ':ncs-recruitment:0.4'
		runtime ':ncs-tracking:3.2.1'
		runtime ':ncs-web-template:0.2'
		runtime ':pdf:0.6'
		runtime ':quartz:0.4.2'
		runtime ':springcache:1.3.1'
		compile ":hibernate:${grailsVersion}"
		build ":tomcat:${grailsVersion}"
	}
}
