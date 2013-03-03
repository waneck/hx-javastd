package java.rmi.registry;
/*
* Copyright (c) 1996, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface Registry extends java.rmi.Remote
{
	/**
	* Returns the remote reference bound to the specified
	* <code>name</code> in this registry.
	*
	* @param   name the name for the remote reference to look up
	*
	* @return  a reference to a remote object
	*
	* @throws  NotBoundException if <code>name</code> is not currently bound
	*
	* @throws  RemoteException if remote communication with the
	* registry failed; if exception is a <code>ServerException</code>
	* containing an <code>AccessException</code>, then the registry
	* denies the caller access to perform this operation
	*
	* @throws  AccessException if this registry is local and it denies
	* the caller access to perform this operation
	*
	* @throws  NullPointerException if <code>name</code> is <code>null</code>
	*/
	@:overload @:public public function lookup(name : String) : java.rmi.Remote;
	
	/**
	* Binds a remote reference to the specified <code>name</code> in
	* this registry.
	*
	* @param   name the name to associate with the remote reference
	* @param   obj a reference to a remote object (usually a stub)
	*
	* @throws  AlreadyBoundException if <code>name</code> is already bound
	*
	* @throws  RemoteException if remote communication with the
	* registry failed; if exception is a <code>ServerException</code>
	* containing an <code>AccessException</code>, then the registry
	* denies the caller access to perform this operation (if
	* originating from a non-local host, for example)
	*
	* @throws  AccessException if this registry is local and it denies
	* the caller access to perform this operation
	*
	* @throws  NullPointerException if <code>name</code> is
	* <code>null</code>, or if <code>obj</code> is <code>null</code>
	*/
	@:overload @:public public function bind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Removes the binding for the specified <code>name</code> in
	* this registry.
	*
	* @param   name the name of the binding to remove
	*
	* @throws  NotBoundException if <code>name</code> is not currently bound
	*
	* @throws  RemoteException if remote communication with the
	* registry failed; if exception is a <code>ServerException</code>
	* containing an <code>AccessException</code>, then the registry
	* denies the caller access to perform this operation (if
	* originating from a non-local host, for example)
	*
	* @throws  AccessException if this registry is local and it denies
	* the caller access to perform this operation
	*
	* @throws  NullPointerException if <code>name</code> is <code>null</code>
	*/
	@:overload @:public public function unbind(name : String) : Void;
	
	/**
	* Replaces the binding for the specified <code>name</code> in
	* this registry with the supplied remote reference.  If there is
	* an existing binding for the specified <code>name</code>, it is
	* discarded.
	*
	* @param   name the name to associate with the remote reference
	* @param   obj a reference to a remote object (usually a stub)
	*
	* @throws  RemoteException if remote communication with the
	* registry failed; if exception is a <code>ServerException</code>
	* containing an <code>AccessException</code>, then the registry
	* denies the caller access to perform this operation (if
	* originating from a non-local host, for example)
	*
	* @throws  AccessException if this registry is local and it denies
	* the caller access to perform this operation
	*
	* @throws  NullPointerException if <code>name</code> is
	* <code>null</code>, or if <code>obj</code> is <code>null</code>
	*/
	@:overload @:public public function rebind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Returns an array of the names bound in this registry.  The
	* array will contain a snapshot of the names bound in this
	* registry at the time of the given invocation of this method.
	*
	* @return  an array of the names bound in this registry
	*
	* @throws  RemoteException if remote communication with the
	* registry failed; if exception is a <code>ServerException</code>
	* containing an <code>AccessException</code>, then the registry
	* denies the caller access to perform this operation
	*
	* @throws  AccessException if this registry is local and it denies
	* the caller access to perform this operation
	*/
	@:overload @:public public function list() : java.NativeArray<String>;
	
	
}
