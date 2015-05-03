package com.vbpm.engine

class Process {
	
	String processLabel
	String processStat
	
	static belongsTo = [tasks: Task]
	
    static constraints = {
		processLabel blank:false
		
    }
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return processLabel;
	}
}
