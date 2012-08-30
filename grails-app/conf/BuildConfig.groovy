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

		// We used svn to install plugins. Soon SVN repo will move to github to keep the full history of plugins changes. The app will get plugins from artifact mavenRepo
		//grailsRepo "http://svn.cccs.umn.edu/grails-plugins"
		//grailsRepo "http://svn.cccs.umn.edu/ncs-grails-plugins"

		mavenRepo "http://artifact.ncs.umn.edu/plugins-release"

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        //mavenLocal()

		// mavenCentral() -> was uncommented before 'artifactory' was added
        //mavenCentral()

        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

		compile 'groovy-ldap:groovy-ldap:groovy-ldap'

        //runtime 'mysql:mysql-connector-java:5.1.13'
        runtime 'mysql:mysql-connector-java:5.1.18'
    }
	plugins {
		compile ":hibernate:$grailsVersion"
		compile ":tomcat:$grailsVersion"

		compile ":address-lookup-zpfour:0.1.2"
		compile ":audit-logging:0.5.4"
		compile ":barcode4j:0.2"
		test ":code-coverage:1.2.5"
		test ":codenarc:0.16.1"
		compile ":csv:0.3"
		compile ":joda-time:1.0"
		compile ":jquery:1.7.1"
		compile ":mail:1.0"
		compile ":ncs-appointment:0.2"
		compile ":ncs-calling:0.1"
		compile ":ncs-event:1.1"
		compile ":ncs-norc-link:0.4"
		compile ":ncs-people:0.9"
		compile ":ncs-recruitment:1.0"
		compile ":ncs-tracking:3.2.5"
		compile ":ncs-web-template:0.2"
		compile ":pdf:0.6"
		compile ":quartz:0.4.2"
		compile ":springcache:1.3.1"
		compile ":spring-security-core:1.2.7.3"
		compile ":spring-security-ldap:1.0.6"
		compile ":spring-security-shibboleth-native-sp:1.0.3"
		provided ":spring-security-mock:1.0.1"



	}
}
