package org.omg.PortableServer.POAManagerPackage;
/**
* org/omg/PortableServer/POAManagerPackage/State.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * Specifies the states for the POAManager
	 */
extern class State implements org.omg.CORBA.portable.IDLEntity
{
	@:public @:static @:final public static var _HOLDING(default, null) : Int;
	
	@:public @:static @:final public static var HOLDING(default, null) : org.omg.PortableServer.POAManagerPackage.State;
	
	@:public @:static @:final public static var _ACTIVE(default, null) : Int;
	
	@:public @:static @:final public static var ACTIVE(default, null) : org.omg.PortableServer.POAManagerPackage.State;
	
	@:public @:static @:final public static var _DISCARDING(default, null) : Int;
	
	@:public @:static @:final public static var DISCARDING(default, null) : org.omg.PortableServer.POAManagerPackage.State;
	
	@:public @:static @:final public static var _INACTIVE(default, null) : Int;
	
	@:public @:static @:final public static var INACTIVE(default, null) : org.omg.PortableServer.POAManagerPackage.State;
	
	@:overload @:public public function value() : Int;
	
	@:overload @:public @:static public static function from_int(value : Int) : org.omg.PortableServer.POAManagerPackage.State;
	
	@:overload @:protected private function new(value : Int) : Void;
	
	
}
