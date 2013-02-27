package org.omg.PortableServer;
/**
* org/omg/PortableServer/ThreadPolicyValue.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * The ThreadPolicyValue can have the following values.
	 * ORB_CTRL_MODEL - The ORB is responsible for assigning 
	 * requests for an ORB- controlled POA to threads. 
	 * SINGLE_THREAD_MODEL - Requests for a single-threaded 
	 * POA are processed sequentially. 
	 */
extern class ThreadPolicyValue implements org.omg.CORBA.portable.IDLEntity
{
	public static var _ORB_CTRL_MODEL(default, null) : Int;
	
	public static var ORB_CTRL_MODEL(default, null) : ThreadPolicyValue;
	
	public static var _SINGLE_THREAD_MODEL(default, null) : Int;
	
	public static var SINGLE_THREAD_MODEL(default, null) : ThreadPolicyValue;
	
	@:overload public function value() : Int;
	
	@:overload public static function from_int(value : Int) : ThreadPolicyValue;
	
	@:overload private function new(value : Int) : Void;
	
	
}
