package com.myapp.auth

import org.bson.types.ObjectId

class User {
	transient springSecurityService
	ObjectId id
	String username
	String password
	String email
	String tel
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	Set<Role> authorities

	static transients = ["springSecurityService"]
	static embedded = ['authorities']
	static constraints = {
		username blank: false, unique: true,size: 2..32,matches: "[a-zA-Z0-9_]+"
		email blank: false, unique:true,email:true
		tel blank: false
		password blank: false,size:6..64
	}

	static mapping = {
		password column: '`password`'
		cache true
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
