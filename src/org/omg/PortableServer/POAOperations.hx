package org.omg.PortableServer;
/**
* org/omg/PortableServer/POAOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
	 * A POA object manages the implementation of a 
	 * collection of objects. The POA supports a name space 
	 * for the objects, which are identified by Object Ids. 
	 * A POA also provides a name space for POAs. A POA is 
	 * created as a child of an existing POA, which forms a 
	 * hierarchy starting with the root POA. A POA object 
	 * must not be exported to other processes, or 
	 * externalized with ORB::object_to_string.
	 */
extern interface POAOperations
{
	/**
		 * This operation creates a new POA as a child of the 
		 * target POA.
		 * @param adapter_name identifies the new POA with 
		 *        respect to other POAs with the same parent POA.
		 * @param a_POAManager specifies the POA Manager to be
		 *        associated with the new POA.
		 * @param policies specifies policy objects to be 
		 *        associated with the POA to control its behavior.
		 * @exception AdapterAlreadyExists specifies that the
		 *            target POA already has a child POA with 
		 *            the specified name.
		 * @exception InvalidPolicy is raised if any of the
		 *            policy objects are not valid for the ORB,
		 *            or are in conflict, or require an 
		 *            administrative action that has not been
		 *            performed.
		 */
	@:overload public function create_POA(adapter_name : String, a_POAManager : org.omg.PortableServer.POAManager, policies : java.NativeArray<org.omg.CORBA.Policy>) : org.omg.PortableServer.POA;
	
	/**
		 * If the target POA is the parent of a child POA with 
		 * the specified name (relative to the target POA), that 
		 * child POA is returned. 
		 * @param adapter_name POA name to be found.
		 * @param activate_it  if a POA with the specified 
		 *        name does not exist and the value of 
		 *        the activate_it parameter is TRUE, the target 
		 *        POA's AdapterActivator, if one exists, 
		 *        is invoked.
		 * @return POA if one exists or is activated by the
		 *         AdapterActivator.
		 * @return AdapterNonExistent is raised if POA with
		 *         a specified name cannot be found or
		 *         activated using AdapaterActivator.
		 */
	@:overload public function find_POA(adapter_name : String, activate_it : Bool) : org.omg.PortableServer.POA;
	
	/**
		 * This operation destroys the POA and all descendant 
		 * POAs. All descendant POAs are destroyed (recursively) 
		 * before the destruction of the containing POA. The POA 
		 * so destroyed (that is, the POA with its name) may be 
		 * re-created later in the same process.
		 * @param etherealize_objects flag to indicate whether
		 *        etherealize operation on servant manager needs
		 *        to be called.
		 * @param wait_for_completion flag to indicate whether
		 *        POA and its children need to wait for active
		 *        requests and the etherealization to complete.
		 *
		 */
	@:overload public function destroy(etherealize_objects : Bool, wait_for_completion : Bool) : Void;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value.
		 * @param value policy type
		 * @return ThreadPolcy Object
		 */
	@:overload public function create_thread_policy(value : org.omg.PortableServer.ThreadPolicyValue) : org.omg.PortableServer.ThreadPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value.
		 * @param value policy type
		 * @return LifespanPolicy Object.
		 */
	@:overload public function create_lifespan_policy(value : org.omg.PortableServer.LifespanPolicyValue) : org.omg.PortableServer.LifespanPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value.
		 * @param value policy type
		 * @return IdUniquenessPolicy Object.
		 */
	@:overload public function create_id_uniqueness_policy(value : org.omg.PortableServer.IdUniquenessPolicyValue) : org.omg.PortableServer.IdUniquenessPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value. 
		 * @param value policy type
		 * @return IdAssignmentPolicy Object.
		 */
	@:overload public function create_id_assignment_policy(value : org.omg.PortableServer.IdAssignmentPolicyValue) : org.omg.PortableServer.IdAssignmentPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value. 
		 * @param value policy type
		 * @return ImplicitActivationPolicy Object.
		 */
	@:overload public function create_implicit_activation_policy(value : org.omg.PortableServer.ImplicitActivationPolicyValue) : org.omg.PortableServer.ImplicitActivationPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value.
		 * @param value policy type
		 * @return ServantRetentionPolicy Object.
		 */
	@:overload public function create_servant_retention_policy(value : org.omg.PortableServer.ServantRetentionPolicyValue) : org.omg.PortableServer.ServantRetentionPolicy;
	
	/**
		 * These operations each return a reference to a policy 
		 * object with the specified value. 
		 * @param value policy type
		 * @return RequestProcessingPolicy Object.
		 */
	@:overload public function create_request_processing_policy(value : org.omg.PortableServer.RequestProcessingPolicyValue) : org.omg.PortableServer.RequestProcessingPolicy;
	
	/**
		 * This attribute identifies the POA relative to its 
		 * parent. This name is assigned when the POA is created.
		 */
	@:overload public function the_name() : String;
	
	/**
		 * This attribute identifies the parent of the POA. 
		 * The parent of the root POA is null. 
		 */
	@:overload public function the_parent() : org.omg.PortableServer.POA;
	
	/**
		 * This attribute identifies the current set of all 
		 * child POAs of the POA. The set of child POAs 
		 * includes only the POA's immediate children, and 
		 * not their descendants.
		 */
	@:overload public function the_children() : java.NativeArray<org.omg.PortableServer.POA>;
	
	/**
		 * This attribute identifies the POA manager 
		 * associated with the POA.
		 */
	@:overload public function the_POAManager() : org.omg.PortableServer.POAManager;
	
	/**
		 * This attribute identifies the adapter activator 
		 * associated with the POA.
		 */
	@:overload public function the_activator() : org.omg.PortableServer.AdapterActivator;
	
	/**
		 * This attribute identifies the adapter activator 
		 * associated with the POA.
		 */
	@:overload public function the_activator(newThe_activator : org.omg.PortableServer.AdapterActivator) : Void;
	
	/**
		 *
		 * If the ServantRetentionPolicy of the POA is RETAIN, 
		 * then the ServantManager argument (imgr) shall support 
		 * the ServantActivator interface. For a NON_RETAIN policy,
		 * the ServantManager shall support the ServantLocator 
		 * interface. If the argument is nil, or does not support 
		 * the required interface, then the OBJ_ADAPTER 
		 * exception is raised.
		 * @return ServantManager associated with a POA or null if
		 *         none exists.
		 * @exception WrongPolicy raised if the 
		 *            USE_SERVANT_MANAGER policy is not specified.
		 */
	@:overload public function get_servant_manager() : org.omg.PortableServer.ServantManager;
	
	/**
		 *
		 * This operation sets the default servant manager 
		 * associated with the POA. This operation may only be 
		 * invoked once after a POA has been created. Attempting 
		 * to set the servant manager after one has already 
		 * been set will result in the BAD_INV_ORDER exception 
		 * being raised.
		 * @param imgr servant manager to be used as a default.
		 * @exception WrongPolicy raised if the 
		 *            USE_SERVANT_MANAGER policy is not specified.
		 */
	@:overload public function set_servant_manager(imgr : org.omg.PortableServer.ServantManager) : Void;
	
	/**
		 * This operation returns the default servant associated 
		 * with the POA. 
		 * @return p_servant default servant associated with a POA.
		 * @exception NoServant raised if no default servant is
		 *            associated with the POA.
		 * @exception WrongPolicy raised if the 
		 *            USE_DEFAULT_SERVANT policy is not specified.
		 */
	@:overload public function get_servant() : org.omg.PortableServer.Servant;
	
	/**
		 *
		 * This operation registers the specified servant with 
		 * the POA as the default servant. This servant will 
		 * be used for all requests for which no servant is 
		 * found in the Active Object Map.
		 * @param p_servant servant to be used as a default.
		 * @exception WrongPolicy raised if the 
		 *            USE_DEFAULT_SERVANT policy is not specified.
		 */
	@:overload public function set_servant(p_servant : org.omg.PortableServer.Servant) : Void;
	
	/**
		 *
		 * This operation generates an Object Id and enters 
		 * the Object Id and the specified servant in the 
		 * Active Object Map.
		 * @param p_servant servant to be associated with an
		 *            object to be activated.
		 * @return POA generated object id.
		 * @exception ServantAlreadyActive is raised if the
		 *            POA has UNIQUE_ID policy and servant is
		 *            is already in the Active Object Map.
		 * @exception WrongPolicy raised if the SYSTEM_ID and 
		 *            RETAIN policies are not specified.
		 */
	@:overload public function activate_object(p_servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* This operation enters an association between the 
		 * specified Object Id and the specified servant in the 
		 * Active Object Map.
		 * @param id object id for the object to be activated.
		 * @param p_servant servant to be associated with the
		 *                  object.
		 * @exception ServantAlreadyActive raised if the POA 
		 *            has the UNIQUE_ID policy and the servant 
		 *            is already in the Active Object Map.
		 * @exception ObjectAlreadyActive raised if the object is
		 *            already active in the POA.
	* @exception WrongPolicy raised if the RETAIN policy is
	*            is not specified.
	*/
	@:overload public function activate_object_with_id(id : java.NativeArray<java.StdTypes.Int8>, p_servant : org.omg.PortableServer.Servant) : Void;
	
	/**
		 *
		 * This operation causes the ObjectId specified in the 
		 * oid parameter to be deactivated. An ObjectId which 
		 * has been deactivated continues to process requests 
		 * until there are no active requests for that ObjectId. 
		 * A deactivated ObjectId is removed from the Active 
		 * Object Map when all requests executing for that 
		 * ObjectId have completed. 
		 * @param oid Object Id for the object to be deactivated.
		 * @exception ObjectNotActive if the object with the
		 *            specified oid is not in the Active Object
		 *            Map.
		 * @exception WrongPolicy raised if the RETAIN policy is
		 *            is not specified.
		 */
	@:overload public function deactivate_object(oid : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
		 * This operation creates an object reference that 
		 * encapsulates a POA-generated Object Id value and 
		 * the specified interface repository id. 
		 *
		 * @param intf rep id for creating an object reference.
		 * @return object reference created using intf.
		 * @exception WrongPolicy if SYSTEM_ID policy is not 
		 *            specified.
		 */
	@:overload public function create_reference(intf : String) : org.omg.CORBA.Object;
	
	/**
		 * This operation creates an object reference that 
		 * encapsulates the specified Object Id and interface 
		 * repository Id values. It does not cause an activation 
		 * to take place. The resulting reference may be passed 
		 * to clients, so that subsequent requests on those 
		 * references will cause the object to be activated 
		 * if necessary, or the default servant used, depending 
		 * on the applicable policies. 
		 * @param oid object id for creating an objref
		 * @param intf rep id for creating an objref
		 * @return object reference created using oid and intf
		 * @exception BAD_PARAM is raised if the POA has the 
		 *             SYSTEM_ID policy and it detects that the 
		 *             Object Id value was not generated by the 
		 *             system or for this POA.
		 */
	@:overload public function create_reference_with_id(oid : java.NativeArray<java.StdTypes.Int8>, intf : String) : org.omg.CORBA.Object;
	
	/**
		 * This operation has four possible behaviors. 
		 * 1. If the POA has the UNIQUE_ID policy and the 
		 * specified servant is active, the Object Id associated 
		 * with that servant is returned.
		 * 2. If the POA has the IMPLICIT_ACTIVATION policy and 
		 * either the POA has the MULTIPLE_ID policy or the 
		 * specified servant is not active, the servant is 
		 * activated using a POA-generated Object Id and the 
		 * Interface Id associated with the servant, and that 
		 * Object Id is returned. 
		 * 3. If the POA has the USE_DEFAULT_SERVANT policy, 
		 * the servant specified is the default servant, and the 
		 * operation is being invoked in the context of executing 
		 * a request on the default servant, then the ObjectId 
		 * associated with the current invocation is returned. 
		 * 4. Otherwise, the ServantNotActive exception is raised.
		 *
		 * @param p_servant servant for which the object disi returned.
		 * @return object id associated with the servant.
		 * @exception ServantNotActive if the above rules and
		 *            policy combination is not met. 
		 * @exception WrongPolicy if the USE_DEFAULT_SERVANT policy
		 *            or a combination of the RETAIN policy and 
		 *            either the UNIQUE_ID or IMPLICIT_ACTIVATION 
		 *            policies are not present. 
		 */
	@:overload public function servant_to_id(p_servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
		 * This operation requires the RETAIN policy and either 
		 * the UNIQUE_ID or IMPLICIT_ACTIVATION policies if 
		 * invoked outside the context of an operation dispatched 
		 * by this POA. It has four possible behaviors.
		 * 1. If the POA has both the RETAIN and the 
		 * UNIQUE_ID policy and the specified servant is active, 
		 * an object reference encapsulating the information used 
		 * to activate the servant is returned. 
		 * 2. If the POA has both the RETAIN and the 
		 * IMPLICIT_ACTIVATION policy and either the POA has the 
		 * MULTIPLE_ID policy or the specified servant is not 
		 * active, the servant is activated using a POA-generated 
		 * Object Id and the Interface Id associated with the 
		 * servant, and a corresponding object reference is 
		 * returned. 
		 * 3. If the operation was invoked in the context of 
		 * executing a request on the specified servant, the 
		 * reference associated with the current invocation 
		 * is returned. 
		 * 4. Otherwise, the ServantNotActive exception is raised.
		 *
		 * @param p_servant servant for which the object reference
		 *                  needs to be obtained.
		 * @return object reference associated with the servant.
		 * @exception WrongPolicy if the operation is not invoked 
		 *            in the context of executing a request on 
		 *            the specified servant and the required 
		 *            policies are not present.
		 * @exception ServantNotActive if the above specified
		 *            policies and rules are not met.
		 */
	@:overload public function servant_to_reference(p_servant : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	/**
		 * If the POA has the RETAIN policy and the specified 
		 * object is present in the Active Object Map, this 
		 * operation returns the servant associated with that 
		 * object in the Active Object Map. Otherwise, if the 
		 * POA has the USE_DEFAULT_SERVANT policy and a default 
		 * servant has been registered with the POA, this 
		 * operation returns the default servant. If the object 
		 * reference was not created by this POA, 
		 * the WrongAdapter exception is raised. (OMG Issue
		 * on inconsistency with the POA.IDL.
		 *
		 * @param reference object reference for which the
		 *                  servant is returned.
		 * @return servant associated with the reference.
		 * @exception WrongPolicy if neither the RETAIN policy or 
		 *            the USE_DEFAULT_SERVANT policy is present. 
		 * @exception ObjectNotActive if the servant is not
		 *            present in the Active Object Map (for RETAIN)
		 *            or no default servant is registered (for
		 *            USE_DEFAULT_POLICY).
		 * @exception WrongAdapter if reference was not created by
		 *	      this POA instance.
		 */
	@:overload public function reference_to_servant(reference : org.omg.CORBA.Object) : org.omg.PortableServer.Servant;
	
	/**
		 * This operation returns the Object Id value 
		 * encapsulated by the specified reference. This 
		 * operation is valid only if the reference was created 
		 * by the POA on which the operation is being performed. 
		 * The object denoted by the reference does not have 
		 * to be active for this operation to succeed.
		 *
		 * @param reference the object reference from which the
		 *                  object id needs to be returned.
		 * @return object id encapsulated in the reference.
		 * @exception WrongAdapter if the reference was not 
		 *            created by the POA specified in the 
		 *            reference.
		 * @exception WrongPolicy declared to allow future 
		 *            extensions. 
		 *
		 */
	@:overload public function reference_to_id(reference : org.omg.CORBA.Object) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
		 * If the POA has the RETAIN policy and the specified 
		 * ObjectId is in the Active Object Map, this operation 
		 * returns the servant associated with that object in 
		 * the Active Object Map. Otherwise, if the POA has 
		 * the USE_DEFAULT_SERVANT policy and a default servant 
		 * has been registered with the POA, this operation 
		 * returns the default servant. 
		 *
		 * @param oid object id for the which the servant is
		 *            returned.
		 * @return servant associated with oid.
		 * @exception ObjectNotActive is raised if ObjectId is
		 *            is not in the Active Object Map (for RETAIN
		 *            policy), or no default servant is registered
		 *            (for USE_DEFAULT_SERVANT policy).
		 *
		 * @exception WrongPolicy is raised if the RETAIN policy
		 *                        or the USE_DEFAULT_SERVANT 
		 *                        policy is not present. 
		 */
	@:overload public function id_to_servant(oid : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	/**
		 * If an object with the specified Object Id value is 
		 * currently active, a reference encapsulating the 
		 * information used to activate the object is returned. 
		 *
		 * @param oid id of the object for which the
		 *                 reference is returned.
		 * @return the object reference 
		 *
		 * @exception ObjectNotActive if the Object Id value 
		 *             is not active in the POA.
		 * @exception WrongPolicy if the RETAIN policy is not 
		 *             present.
		 */
	@:overload public function id_to_reference(oid : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	/**
		 * This returns the unique id of the POA in the process in which it 
		 * is created.  It is for use by portable interceptors.
		 * <p>
		 * This id is guaranteed unique for the life span of the POA in the
		 * process.  For persistent POAs, this means that if a POA is created 
		 * in the same path with the same name as another POA, these POAs 
		 * are identical and, therefore, have the same id.  For transient 
		 * POAs, each POA is unique.
		 */
	@:overload public function id() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
