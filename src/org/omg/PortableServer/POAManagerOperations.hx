package org.omg.PortableServer;
/**
* org/omg/PortableServer/POAManagerOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * Each POA object has an associated POAManager object. 
	 * A POA manager may be associated with one or more 
	 * POA objects. A POA manager encapsulates the processing 
	 * state of the POAs it is associated with.
	 */
extern interface POAManagerOperations
{
	/**
		 * This operation changes the state of the POA manager 
		 * to active, causing associated POAs to start processing
		 * requests.
		 * @exception AdapterInactive is raised if the operation is
		 *            invoked on the POAManager in inactive state.
		 */
	@:overload public function activate() : Void;
	
	/**
		 * This operation changes the state of the POA manager 
		 * to holding, causing associated POAs to queue incoming
		 * requests.
		 * @param wait_for_completion if FALSE, the operation 
		 *            returns immediately after changing state.  
		 *            If TRUE, it waits for all active requests 
		 *            to complete. 
		 * @exception AdapterInactive is raised if the operation is
		 *            invoked on the POAManager in inactive state.
		 */
	@:overload public function hold_requests(wait_for_completion : Bool) : Void;
	
	/**
		 * This operation changes the state of the POA manager 
		 * to discarding. This causes associated POAs to discard
		 * incoming requests.
		 * @param wait_for_completion if FALSE, the operation 
		 *            returns immediately after changing state.  
		 *            If TRUE, it waits for all active requests 
		 *            to complete. 
		 * @exception AdapterInactive is raised if the operation is
		 *            invoked on the POAManager in inactive state.
		 */
	@:overload public function discard_requests(wait_for_completion : Bool) : Void;
	
	/**
		 * This operation changes the state of the POA manager 
		 * to inactive, causing associated POAs to reject the
		 * requests that have not begun executing as well as
		 * as any new requests.
		 * @param etherealize_objects a flag to indicate whether
		 *        to invoke the etherealize operation of the
		 *        associated servant manager for all active 
		 *        objects.
		 * @param wait_for_completion if FALSE, the operation 
		 *            returns immediately after changing state.  
		 *            If TRUE, it waits for all active requests 
		 *            to complete. 
		 * @exception AdapterInactive is raised if the operation is
		 *            invoked on the POAManager in inactive state.
		 */
	@:overload public function deactivate(etherealize_objects : Bool, wait_for_completion : Bool) : Void;
	
	/**
		 * This operation returns the state of the POA manager.
		 */
	@:overload public function get_state() : org.omg.PortableServer.POAManagerPackage.State;
	
	
}
