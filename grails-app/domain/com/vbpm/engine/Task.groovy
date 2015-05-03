package com.vbpm.engine

class Task {
	
	String taskLabel
	String taskStat
	
	static hasMany = [processes: Process]
	
    static constraints = {
		taskLabel blank:false 
    }

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return taskLabel;
	}
}

