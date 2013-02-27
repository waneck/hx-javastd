package org.omg.PortableServer;
/**
* org/omg/PortableServer/ServantLocatorPOA.java .
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
extern class ServantLocatorPOA extends org.omg.PortableServer.Servant implements org.omg.PortableServer.ServantLocatorOperations implements org.omg.CORBA.portable.InvokeHandler
{
	@:overload public function _invoke($method : String, _in : org.omg.CORBA.portable.InputStream, $rh : org.omg.CORBA.portable.ResponseHandler) : org.omg.CORBA.portable.OutputStream;
	
	@:overload override public function _all_interfaces(poa : org.omg.PortableServer.POA, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	@:overload public function _this() : org.omg.PortableServer.ServantLocator;
	
	@:overload public function _this(orb : org.omg.CORBA.ORB) : org.omg.PortableServer.ServantLocator;
	
	/**
		 * This operation is invoked whenener a servant completes
		 * a request.
		 * @param oid the object id ssociated with object on which
		 *            the request was made.
		 * @param adapter the reference for POA in which the
		 *                object was active.
		 * @param the_cookie  an opaque value that contains
		 *                    the data set by preinvoke.
		 * @param the_servant reference to the servant that is
		 *                    associated with the object.
		 */
	@:overload public function postinvoke(oid : java.NativeArray<java.StdTypes.Int8>, adapter : org.omg.PortableServer.POA, operation : String, the_cookie : Dynamic, the_servant : org.omg.PortableServer.Servant) : Void;
	
	/**
		 * This operations is used to get a servant that will be
		 * used to process the request that caused preinvoke to
		 * be called.
		 * @param oid the object id associated with object on
		 *            which the request was made. 
		 * @param adapter the reference for POA in which the
		 *                object is being activated.
		 * @param operation the operation name.
		 * @param the_cookie  an opaque value that can be set
		 *                    by the servant manager to be used
		 *                    during postinvoke.
		 * @return Servant used to process incoming request.
		 * @exception ForwardRequest to indicate to the ORB 
		 *            that it is responsible for delivering 
		 *            the current request and subsequent 
		 *            requests to the object denoted in the 
		 *            forward_reference member of the exception.
		 */
	@:overload public function preinvoke(oid : java.NativeArray<java.StdTypes.Int8>, adapter : org.omg.PortableServer.POA, operation : String, the_cookie : org.omg.PortableServer.ServantLocatorPackage.CookieHolder) : org.omg.PortableServer.Servant;
	
	
}
