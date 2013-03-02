package javax.security.auth.login;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AppConfigurationEntry
{
	/**
	* Default constructor for this class.
	*
	* <p> This entry represents a single <code>LoginModule</code>
	* entry configured for the application specified in the
	* <code>getAppConfigurationEntry(String appName)</code>
	* method from the <code>Configuration</code> class.
	*
	* @param loginModuleName String representing the class name of the
	*                  <code>LoginModule</code> configured for the
	*                  specified application. <p>
	*
	* @param controlFlag either REQUIRED, REQUISITE, SUFFICIENT,
	*                  or OPTIONAL. <p>
	*
	* @param options the options configured for this <code>LoginModule</code>.
	*
	* @exception IllegalArgumentException if <code>loginModuleName</code>
	*                  is null, if <code>LoginModuleName</code>
	*                  has a length of 0, if <code>controlFlag</code>
	*                  is not either REQUIRED, REQUISITE, SUFFICIENT
	*                  or OPTIONAL, or if <code>options</code> is null.
	*/
	@:overload public function new(loginModuleName : String, controlFlag : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag, options : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Get the class name of the configured <code>LoginModule</code>.
	*
	* @return the class name of the configured <code>LoginModule</code> as
	*          a String.
	*/
	@:overload public function getLoginModuleName() : String;
	
	/**
	* Return the controlFlag
	* (either REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL)
	* for this <code>LoginModule</code>.
	*
	* @return the controlFlag
	*          (either REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL)
	*          for this <code>LoginModule</code>.
	*/
	@:overload public function getControlFlag() : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag;
	
	/**
	* Get the options configured for this <code>LoginModule</code>.
	*
	* @return the options configured for this <code>LoginModule</code>
	*          as an unmodifiable <code>Map</code>.
	*/
	@:overload public function getOptions() : java.util.Map<String, Dynamic>;
	
	
}
/**
* This class represents whether or not a <code>LoginModule</code>
* is REQUIRED, REQUISITE, SUFFICIENT or OPTIONAL.
*/
@:native('javax$security$auth$login$AppConfigurationEntry$LoginModuleControlFlag') extern class AppConfigurationEntry_LoginModuleControlFlag
{
	/**
	* Required <code>LoginModule</code>.
	*/
	public static var REQUIRED(default, null) : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag;
	
	/**
	* Requisite <code>LoginModule</code>.
	*/
	public static var REQUISITE(default, null) : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag;
	
	/**
	* Sufficient <code>LoginModule</code>.
	*/
	public static var SUFFICIENT(default, null) : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag;
	
	/**
	* Optional <code>LoginModule</code>.
	*/
	public static var OPTIONAL(default, null) : javax.security.auth.login.AppConfigurationEntry.AppConfigurationEntry_LoginModuleControlFlag;
	
	/**
	* Return a String representation of this controlFlag.
	*
	* <p> The String has the format, "LoginModuleControlFlag: <i>flag</i>",
	* where <i>flag</i> is either <i>required</i>, <i>requisite</i>,
	* <i>sufficient</i>, or <i>optional</i>.
	*
	* @return a String representation of this controlFlag.
	*/
	@:overload public function toString() : String;
	
	
}
