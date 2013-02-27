package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
//// java imports
////
//// jmx imports
////
/**
* <p>
* This class is a utility class that transforms SNMP GET / SET requests
* into standard JMX getAttributes() setAttributes() requests.
* </p>
*
* <p>
* The transformation relies on the metadata information provided by the
* {@link com.sun.jmx.snmp.agent.SnmpGenericMetaServer} object which is
* passed as the first parameter to every method. This SnmpGenericMetaServer
* object is usually a Metadata object generated by <code>mibgen</code>.
* </p>
*
* <p><b><i>
* This class is used internally by mibgen generated metadata objects and
* you should never need to use it directly.
* </b></i></p>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
**/
extern class SnmpGenericObjectServer
{
	/**
	* The MBean server through which the MBeans will be accessed.
	**/
	private var server(default, null) : javax.management.MBeanServer.MBeanServer;
	
	/**
	* Builds a new SnmpGenericObjectServer. Usually there will be a single
	* object of this type per MIB.
	*
	* @param server The MBeanServer in which the MBean accessed by this
	*               MIB are registered.
	**/
	@:overload public function new(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Execute an SNMP GET request.
	*
	* <p>
	* This method first builds the list of attributes that need to be
	* retrieved from the MBean and then calls getAttributes() on the
	* MBean server. Then it updates the SnmpMibSubRequest with the values
	* retrieved from the MBean.
	* </p>
	*
	* <p>
	* The SNMP metadata information is obtained through the given
	* <code>meta</code> object, which usually is an instance of a
	* <code>mibgen</code> generated class.
	* </p>
	*
	* <p><b><i>
	* This method is called internally by <code>mibgen</code> generated
	* objects and you should never need to call it directly.
	* </i></b></p>
	*
	* @param meta  The metadata object impacted by the subrequest
	* @param name  The ObjectName of the MBean impacted by this subrequest
	* @param req   The SNMP subrequest to execute on the MBean
	* @param depth The depth of the SNMP object in the OID tree.
	*
	* @exception SnmpStatusException whenever an SNMP exception must be
	*      raised. Raising an exception will abort the request.<br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerGetException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	**/
	@:overload public function get(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Get the value of an SNMP variable.
	*
	* <p><b><i>
	* You should never need to use this method directly.
	* </i></b></p>
	*
	* @param meta  The impacted metadata object
	* @param name  The ObjectName of the impacted MBean
	* @param id    The OID arc identifying the variable we're trying to set.
	* @param data  User contextual data allocated through the
	*        {@link com.sun.jmx.snmp.agent.SnmpUserDataFactory}
	*
	* @return The value of the variable.
	*
	* @exception SnmpStatusException whenever an SNMP exception must be
	*      raised. Raising an exception will abort the request. <br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerGetException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	**/
	@:overload public function get(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, id : haxe.Int64, data : java.lang.Object.Object) : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Execute an SNMP SET request.
	*
	* <p>
	* This method first builds the list of attributes that need to be
	* set on the MBean and then calls setAttributes() on the
	* MBean server. Then it updates the SnmpMibSubRequest with the new
	* values retrieved from the MBean.
	* </p>
	*
	* <p>
	* The SNMP metadata information is obtained through the given
	* <code>meta</code> object, which usually is an instance of a
	* <code>mibgen</code> generated class.
	* </p>
	*
	* <p><b><i>
	* This method is called internally by <code>mibgen</code> generated
	* objects and you should never need to call it directly.
	* </i></b></p>
	*
	* @param meta  The metadata object impacted by the subrequest
	* @param name  The ObjectName of the MBean impacted by this subrequest
	* @param req   The SNMP subrequest to execute on the MBean
	* @param depth The depth of the SNMP object in the OID tree.
	*
	* @exception SnmpStatusException whenever an SNMP exception must be
	*      raised. Raising an exception will abort the request. <br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerGetException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	**/
	@:overload public function set(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Set the value of an SNMP variable.
	*
	* <p><b><i>
	* You should never need to use this method directly.
	* </i></b></p>
	*
	* @param meta  The impacted metadata object
	* @param name  The ObjectName of the impacted MBean
	* @param x     The new requested SnmpValue
	* @param id    The OID arc identifying the variable we're trying to set.
	* @param data  User contextual data allocated through the
	*        {@link com.sun.jmx.snmp.agent.SnmpUserDataFactory}
	*
	* @return The new value of the variable after the operation.
	*
	* @exception SnmpStatusException whenever an SNMP exception must be
	*      raised. Raising an exception will abort the request. <br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerSetException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	**/
	@:overload public function set(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, x : com.sun.jmx.snmp.SnmpValue.SnmpValue, id : haxe.Int64, data : java.lang.Object.Object) : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Checks whether an SNMP SET request can be successfully performed.
	*
	* <p>
	* For each variable in the subrequest, this method calls
	* checkSetAccess() on the meta object, and then tries to invoke the
	* check<i>AttributeName</i>() method on the MBean. If this method
	* is not defined then it is assumed that the SET won't fail.
	* </p>
	*
	* <p><b><i>
	* This method is called internally by <code>mibgen</code> generated
	* objects and you should never need to call it directly.
	* </i></b></p>
	*
	* @param meta  The metadata object impacted by the subrequest
	* @param name  The ObjectName of the MBean impacted by this subrequest
	* @param req   The SNMP subrequest to execute on the MBean
	* @param depth The depth of the SNMP object in the OID tree.
	*
	* @exception SnmpStatusException if the requested SET operation must
	*      be rejected. Raising an exception will abort the request. <br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerCheckException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	*
	**/
	@:overload public function check(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Checks whether a SET operation can be performed on a given SNMP
	* variable.
	*
	* @param meta  The impacted metadata object
	* @param name  The ObjectName of the impacted MBean
	* @param x     The new requested SnmpValue
	* @param id    The OID arc identifying the variable we're trying to set.
	* @param data  User contextual data allocated through the
	*        {@link com.sun.jmx.snmp.agent.SnmpUserDataFactory}
	*
	* <p>
	* This method calls checkSetAccess() on the meta object, and then
	* tries to invoke the check<i>AttributeName</i>() method on the MBean.
	* If this method is not defined then it is assumed that the SET
	* won't fail.
	* </p>
	*
	* <p><b><i>
	* This method is called internally by <code>mibgen</code> generated
	* objects and you should never need to call it directly.
	* </i></b></p>
	*
	* @exception SnmpStatusException if the requested SET operation must
	*      be rejected. Raising an exception will abort the request. <br>
	*      Exceptions should never be raised directly, but only by means of
	* <code>
	* req.registerCheckException(<i>VariableId</i>,<i>SnmpStatusException</i>)
	* </code>
	*
	**/
	@:overload public function check(meta : com.sun.jmx.snmp.agent.SnmpGenericMetaServer.SnmpGenericMetaServer, name : javax.management.ObjectName.ObjectName, x : com.sun.jmx.snmp.SnmpValue.SnmpValue, id : haxe.Int64, data : java.lang.Object.Object) : Void;
	
	@:overload public function registerTableEntry(meta : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable, rowOid : SnmpOid, objname : javax.management.ObjectName.ObjectName, entry : java.lang.Object.Object) : Void;
	
	
}
