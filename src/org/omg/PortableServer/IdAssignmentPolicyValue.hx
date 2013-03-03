package org.omg.PortableServer;
/**
* org/omg/PortableServer/IdAssignmentPolicyValue.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * The IdAssignmentPolicyValue can have the following
	 * values. USER_ID - Objects created with that POA are 
	 * assigned Object Ids only by the application. 
	 *  SYSTEM_ID - Objects created with that POA are 
	 * assigned Object Ids only by the POA. If the POA also 
	 * has the PERSISTENT policy, assigned Object Ids must 
	 * be unique across all instantiations of the same POA.
	 */
extern class IdAssignmentPolicyValue implements org.omg.CORBA.portable.IDLEntity
{
	@:public @:static @:final public static var _USER_ID(default, null) : Int;
	
	@:public @:static @:final public static var USER_ID(default, null) : org.omg.PortableServer.IdAssignmentPolicyValue;
	
	@:public @:static @:final public static var _SYSTEM_ID(default, null) : Int;
	
	@:public @:static @:final public static var SYSTEM_ID(default, null) : org.omg.PortableServer.IdAssignmentPolicyValue;
	
	@:overload @:public public function value() : Int;
	
	@:overload @:public @:static public static function from_int(value : Int) : org.omg.PortableServer.IdAssignmentPolicyValue;
	
	@:overload @:protected private function new(value : Int) : Void;
	
	
}
