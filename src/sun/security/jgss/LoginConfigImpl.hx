package sun.security.jgss;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class LoginConfigImpl extends javax.security.auth.login.Configuration
{
	/**
	* A new instance of LoginConfigImpl must be created for each login request
	* since it's only used by a single (caller, mech) pair
	* @param caller defined in GSSUtil as CALLER_XXX final fields
	* @param oid defined in GSSUtil as XXX_MECH_OID final fields
	*/
	@:overload public function new(caller : sun.security.jgss.GSSCaller, mech : org.ietf.jgss.Oid) : Void;
	
	/**
	* @param name Almost useless, since the (caller, mech) is already passed
	*             into constructor. The only use will be detecting OTHER which
	*             is called in LoginContext
	*/
	@:overload override public function getAppConfigurationEntry(name : String) : java.NativeArray<javax.security.auth.login.AppConfigurationEntry>;
	
	
}
