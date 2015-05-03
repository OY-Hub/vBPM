package com.myapp.auth

import org.bson.types.ObjectId

class Role {
	ObjectId id
	String authority
	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return authority;
	}
}
