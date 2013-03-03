package java.rmi;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Naming
{
	/**
	* Returns a reference, a stub, for the remote object associated
	* with the specified <code>name</code>.
	*
	* @param name a name in URL format (without the scheme component)
	* @return a reference for a remote object
	* @exception NotBoundException if name is not currently bound
	* @exception RemoteException if registry could not be contacted
	* @exception AccessException if this operation is not permitted
	* @exception MalformedURLException if the name is not an appropriately
	*  formatted URL
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function lookup(name : String) : java.rmi.Remote;
	
	/**
	* Binds the specified <code>name</code> to a remote object.
	*
	* @param name a name in URL format (without the scheme component)
	* @param obj a reference for the remote object (usually a stub)
	* @exception AlreadyBoundException if name is already bound
	* @exception MalformedURLException if the name is not an appropriately
	*  formatted URL
	* @exception RemoteException if registry could not be contacted
	* @exception AccessException if this operation is not permitted (if
	* originating from a non-local host, for example)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function bind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Destroys the binding for the specified name that is associated
	* with a remote object.
	*
	* @param name a name in URL format (without the scheme component)
	* @exception NotBoundException if name is not currently bound
	* @exception MalformedURLException if the name is not an appropriately
	*  formatted URL
	* @exception RemoteException if registry could not be contacted
	* @exception AccessException if this operation is not permitted (if
	* originating from a non-local host, for example)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function unbind(name : String) : Void;
	
	/**
	* Rebinds the specified name to a new remote object. Any existing
	* binding for the name is replaced.
	*
	* @param name a name in URL format (without the scheme component)
	* @param obj new remote object to associate with the name
	* @exception MalformedURLException if the name is not an appropriately
	*  formatted URL
	* @exception RemoteException if registry could not be contacted
	* @exception AccessException if this operation is not permitted (if
	* originating from a non-local host, for example)
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function rebind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Returns an array of the names bound in the registry.  The names are
	* URL-formatted (without the scheme component) strings. The array contains
	* a snapshot of the names present in the registry at the time of the
	* call.
	*
	* @param   name a registry name in URL format (without the scheme
	*          component)
	* @return  an array of names (in the appropriate format) bound
	*          in the registry
	* @exception MalformedURLException if the name is not an appropriately
	*  formatted URL
	* @exception RemoteException if registry could not be contacted.
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function list(name : String) : java.NativeArray<String>;
	
	
}
/**
* Simple class to enable multiple URL return values.
*/
@:native('java$rmi$Naming$ParsedNamingURL') @:internal extern class Naming_ParsedNamingURL
{
	
}
