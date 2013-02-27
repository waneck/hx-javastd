package org.omg.CosNaming;
/**
* org/omg/CosNaming/BindingIteratorPOA.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* The BindingIterator interface allows a client to iterate through
* the bindings using the next_one or next_n operations.
* 
* The bindings iterator is obtained by using the <tt>list</tt>
* method on the <tt>NamingContext</tt>. 
* @see org.omg.CosNaming.NamingContext#list
*/
extern class BindingIteratorPOA extends org.omg.PortableServer.Servant implements org.omg.CosNaming.BindingIteratorOperations implements org.omg.CORBA.portable.InvokeHandler
{
	@:overload public function _invoke($method : String, _in : org.omg.CORBA.portable.InputStream, $rh : org.omg.CORBA.portable.ResponseHandler) : org.omg.CORBA.portable.OutputStream;
	
	@:overload override public function _all_interfaces(poa : org.omg.PortableServer.POA, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	@:overload public function _this() : org.omg.CosNaming.BindingIterator;
	
	@:overload public function _this(orb : org.omg.CORBA.ORB) : org.omg.CosNaming.BindingIterator;
	
	/**
	* This operation destroys the iterator.
	*/
	@:overload public function destroy() : Void;
	
	/**
	* This operation returns at most the requested number of bindings.
	* 
	* @param how_many the maximum number of bindings tro return <p>
	* 
	* @param bl the returned bindings
	*/
	@:overload public function next_n(how_many : Int, bl : org.omg.CosNaming.BindingListHolder) : Bool;
	
	/**
	* This operation returns the next binding. If there are no more
	* bindings, false is returned.
	* 
	* @param b the returned binding
	*/
	@:overload public function next_one(b : org.omg.CosNaming.BindingHolder) : Bool;
	
	
}
