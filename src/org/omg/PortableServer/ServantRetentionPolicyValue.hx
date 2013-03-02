package org.omg.PortableServer;
/**
* org/omg/PortableServer/ServantRetentionPolicyValue.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * ServantRetentionPolicyValue can have the following 
	 * values. RETAIN - to indicate that the POA will retain 
	 * active servants in its Active Object Map. 
	 * NON_RETAIN - to indicate Servants are not retained by 
	 * the POA. If no ServantRetentionPolicy is specified at 
	 * POA creation, the default is RETAIN.
	 */
extern class ServantRetentionPolicyValue implements org.omg.CORBA.portable.IDLEntity
{
	public static var _RETAIN(default, null) : Int;
	
	public static var RETAIN(default, null) : org.omg.PortableServer.ServantRetentionPolicyValue;
	
	public static var _NON_RETAIN(default, null) : Int;
	
	public static var NON_RETAIN(default, null) : org.omg.PortableServer.ServantRetentionPolicyValue;
	
	@:overload public function value() : Int;
	
	@:overload public static function from_int(value : Int) : org.omg.PortableServer.ServantRetentionPolicyValue;
	
	@:overload private function new(value : Int) : Void;
	
	
}
