package com.sun.security.auth.login;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ConfigFile extends javax.security.auth.login.Configuration
{
	/**
	* Create a new <code>Configuration</code> object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a new <code>Configuration</code> object from the specified URI.
	*
	* @param uri Create a new Configuration object from this URI.
	*/
	@:overload @:public public function new(uri : java.net.URI) : Void;
	
	/**
	* Retrieve an entry from the Configuration using an application name
	* as an index.
	*
	* <p>
	*
	* @param applicationName the name used to index the Configuration.
	* @return an array of AppConfigurationEntries which correspond to
	*          the stacked configuration of LoginModules for this
	*          application, or null if this application has no configured
	*          LoginModules.
	*/
	@:overload @:public override public function getAppConfigurationEntry(applicationName : String) : java.NativeArray<javax.security.auth.login.AppConfigurationEntry>;
	
	/**
	* Refresh and reload the Configuration by re-reading all of the
	* login configurations.
	*
	* <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                          to refresh the Configuration.
	*/
	@:overload @:public @:synchronized override public function refresh() : Void;
	
	
}
