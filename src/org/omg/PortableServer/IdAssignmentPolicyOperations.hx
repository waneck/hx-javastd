package org.omg.PortableServer;
/**
* org/omg/PortableServer/IdAssignmentPolicyOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * IdAssignmentPolicy specifies whether Object Ids in 
	 * the created POA are generated by the application or 
	 * by the ORB. The default is SYSTEM_ID.
	 */
extern interface IdAssignmentPolicyOperations extends org.omg.CORBA.PolicyOperations
{
	/**
		 * specifies the policy value
		 */
	@:overload public function value() : org.omg.PortableServer.IdAssignmentPolicyValue;
	
	
}
