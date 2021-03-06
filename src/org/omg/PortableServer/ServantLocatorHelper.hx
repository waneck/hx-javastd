package org.omg.PortableServer;
/**
* org/omg/PortableServer/ServantLocatorHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * When the POA has the NON_RETAIN policy it uses servant 
	 * managers that are ServantLocators. Because the POA 
	 * knows that the servant returned by this servant 
	 * manager will be used only for a single request, 
	 * it can supply extra information to the servant 
	 * manager's operations and the servant manager's pair 
	 * of operations may be able to cooperate to do 
	 * something different than a ServantActivator. 
	 * When the POA uses the ServantLocator interface, 
	 * immediately after performing the operation invocation 
	 * on the servant returned by preinvoke, the POA will 
	 * invoke postinvoke on the servant manager, passing the 
	 * ObjectId value and the Servant value as parameters 
	 * (among others). This feature may be used to force 
	 * every request for objects associated with a POA to 
	 * be mediated by the servant manager.
	 */
extern class ServantLocatorHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableServer.ServantLocator) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableServer.ServantLocator;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableServer.ServantLocator;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableServer.ServantLocator) : Void;
	
	@:overload @:public @:static public static function narrow(obj : org.omg.CORBA.Object) : org.omg.PortableServer.ServantLocator;
	
	@:overload @:public @:static public static function unchecked_narrow(obj : org.omg.CORBA.Object) : org.omg.PortableServer.ServantLocator;
	
	
}
