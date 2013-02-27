package com.sun.jmx.snmp;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is used to pass some specific parameters to an <CODE>
* SnmpEngineFactory </CODE>.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpEngineParameters implements java.io.Serializable.Serializable
{
	/**
	* Sets the file to use for SNMP Runtime Lcd. If no file is provided, the default location will be checked.
	*/
	@:overload public function setSecurityFile(securityFile : java.lang.String.String) : Void;
	
	/**
	* Gets the file to use for SNMP Runtime Lcd.
	* @return The security file.
	*/
	@:overload public function getSecurityFile() : java.lang.String.String;
	
	/**
	* Sets a customized user ACL. User Acl is used in order to check
	* access for SNMP V3 requests. If no ACL is provided,
	* <CODE>com.sun.jmx.snmp.usm.UserAcl.UserAcl</CODE> is instantiated.
	* @param uacl The user ACL to use.
	*/
	@:overload public function setUserAcl(uacl : com.sun.jmx.snmp.UserAcl.UserAcl) : Void;
	
	/**
	* Gets the customized user ACL.
	* @return The customized user ACL.
	*/
	@:overload public function getUserAcl() : com.sun.jmx.snmp.UserAcl.UserAcl;
	
	/**
	* Activate SNMP V3 encryption. By default the encryption is not activated. Be sure that the security provider classes needed for DES are in your classpath (eg:JCE classes)
	*
	*/
	@:overload public function activateEncryption() : Void;
	
	/**
	* Deactivate SNMP V3 encryption. By default the encryption is not activated. Be sure that the security provider classes needed for DES are in your classpath (eg:JCE classes)
	*
	*/
	@:overload public function deactivateEncryption() : Void;
	
	/**
	* Check if encryption is activated. By default the encryption is not activated.
	* @return The encryption activation status.
	*/
	@:overload public function isEncryptionEnabled() : Bool;
	
	/**
	* Set the engine Id.
	* @param engineId The engine Id to use.
	*/
	@:overload public function setEngineId(engineId : com.sun.jmx.snmp.SnmpEngineId.SnmpEngineId) : Void;
	
	/**
	* Get the engine Id.
	* @return The engineId.
	*/
	@:overload public function getEngineId() : com.sun.jmx.snmp.SnmpEngineId.SnmpEngineId;
	
	
}
