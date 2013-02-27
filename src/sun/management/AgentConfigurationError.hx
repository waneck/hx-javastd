package sun.management;
/*
* Copyright (c) 2004, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Configuration Error thrown by a management agent.
*/
extern class AgentConfigurationError extends java.lang.Error
{
	public static var AGENT_EXCEPTION(default, null) : String;
	
	public static var CONFIG_FILE_NOT_FOUND(default, null) : String;
	
	public static var CONFIG_FILE_OPEN_FAILED(default, null) : String;
	
	public static var CONFIG_FILE_CLOSE_FAILED(default, null) : String;
	
	public static var CONFIG_FILE_ACCESS_DENIED(default, null) : String;
	
	public static var EXPORT_ADDRESS_FAILED(default, null) : String;
	
	public static var AGENT_CLASS_NOT_FOUND(default, null) : String;
	
	public static var AGENT_CLASS_FAILED(default, null) : String;
	
	public static var AGENT_CLASS_PREMAIN_NOT_FOUND(default, null) : String;
	
	public static var AGENT_CLASS_ACCESS_DENIED(default, null) : String;
	
	public static var AGENT_CLASS_INVALID(default, null) : String;
	
	public static var INVALID_JMXREMOTE_PORT(default, null) : String;
	
	public static var INVALID_JMXREMOTE_RMI_PORT(default, null) : String;
	
	public static var PASSWORD_FILE_NOT_SET(default, null) : String;
	
	public static var PASSWORD_FILE_NOT_READABLE(default, null) : String;
	
	public static var PASSWORD_FILE_READ_FAILED(default, null) : String;
	
	public static var PASSWORD_FILE_NOT_FOUND(default, null) : String;
	
	public static var ACCESS_FILE_NOT_SET(default, null) : String;
	
	public static var ACCESS_FILE_NOT_READABLE(default, null) : String;
	
	public static var ACCESS_FILE_READ_FAILED(default, null) : String;
	
	public static var ACCESS_FILE_NOT_FOUND(default, null) : String;
	
	public static var PASSWORD_FILE_ACCESS_NOT_RESTRICTED(default, null) : String;
	
	public static var FILE_ACCESS_NOT_RESTRICTED(default, null) : String;
	
	public static var FILE_NOT_FOUND(default, null) : String;
	
	public static var FILE_NOT_READABLE(default, null) : String;
	
	public static var FILE_NOT_SET(default, null) : String;
	
	public static var FILE_READ_FAILED(default, null) : String;
	
	public static var CONNECTOR_SERVER_IO_ERROR(default, null) : String;
	
	public static var INVALID_OPTION(default, null) : String;
	
	public static var INVALID_SNMP_PORT(default, null) : String;
	
	public static var INVALID_SNMP_TRAP_PORT(default, null) : String;
	
	public static var UNKNOWN_SNMP_INTERFACE(default, null) : String;
	
	public static var SNMP_ACL_FILE_NOT_SET(default, null) : String;
	
	public static var SNMP_ACL_FILE_NOT_FOUND(default, null) : String;
	
	public static var SNMP_ACL_FILE_NOT_READABLE(default, null) : String;
	
	public static var SNMP_ACL_FILE_READ_FAILED(default, null) : String;
	
	public static var SNMP_ACL_FILE_ACCESS_NOT_RESTRICTED(default, null) : String;
	
	public static var SNMP_ADAPTOR_START_FAILED(default, null) : String;
	
	public static var SNMP_MIB_INIT_FAILED(default, null) : String;
	
	public static var INVALID_STATE(default, null) : String;
	
	@:overload public function new(error : String) : Void;
	
	@:overload public function new(error : String, cause : java.lang.Throwable) : Void;
	
	@:overload public function new(error : String, params : java.NativeArray<String>) : Void;
	
	@:overload public function new(error : String, cause : java.lang.Throwable, params : java.NativeArray<String>) : Void;
	
	@:overload public function getError() : String;
	
	@:overload public function getParams() : java.NativeArray<String>;
	
	
}
