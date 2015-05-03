import com.myapp.auth.Role
import com.myapp.auth.User

class BootStrap {

	def init = { servletContext ->

		def adminRole = new Role(authority:"ROLE_ADMIN").save(flush:true)
		def respQuRole = new Role(authority:"RESQUALITER").save(flush:true)
		def respRole = new Role(authority:"RESPONSABLE").save(flush:true)
		def empRole = new Role(authority:"EMPLOYEE").save(flush:true)
		def user = new User()
		def user1 = new User()
		def user2 = new User()
		def user3 = new User()
		
		user.username = "Admin"
		user.password = "password"
		user.tel = "0648377673"
		user.email = "Admin@vbpm.com"
		user.enabled = true
		user.accountExpired = false
		user.accountLocked = false
		user.passwordExpired = false
		user.authorities = [adminRole]

		user1.username = "RespQualite"
		user1.password = "password"
		user1.tel = "0648377673"
		user1.email = "RespQualite@vpm.com"
		user1.enabled = true
		user1.accountExpired = false
		user1.accountLocked = false
		user1.passwordExpired = false
		user1.authorities = [respQuRole]
		
		user2.username = "Responsable"
		user2.password = "password"
		user2.tel = "0648377673"
		user2.email = "Responsable@vpm.com"
		user2.enabled = true
		user2.accountExpired = false
		user2.accountLocked = false
		user2.passwordExpired = false
		user2.authorities = [respRole]
		
		user3.username = "Employee"
		user3.password = "password"
		user3.tel = "0648377673"
		user3.email = "Employee@vpm.com"
		user3.enabled = true
		user3.accountExpired = false
		user3.accountLocked = false
		user3.passwordExpired = false
		user3.authorities = [empRole]
		
		user.save(flush:true)
		user1.save(flush:true)
		user2.save(flush:true)
		user3.save(flush:true)
	}
	def destroy = { }
}