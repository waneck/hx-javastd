package org.omg.PortableServer;
/**
* org/omg/PortableServer/ImplicitActivationPolicyOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * This policy specifies whether implicit activation 
	 * of servants is supported in the created POA.
	 */
extern interface ImplicitActivationPolicyOperations extends org.omg.CORBA.PolicyOperations
{
	/**
		 * specifies the policy value
		 */
	@:overload public function value() : org.omg.PortableServer.ImplicitActivationPolicyValue;
	
	
}
