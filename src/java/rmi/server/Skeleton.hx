package java.rmi.server;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Skeleton
{
	/**
	* Unmarshals arguments, calls the actual remote object implementation,
	* and marshals the return value or any exception.
	*
	* @param obj remote implementation to dispatch call to
	* @param theCall object representing remote call
	* @param opnum operation number
	* @param hash stub/skeleton interface hash
	* @exception java.lang.Exception if a general exception occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function dispatch(obj : java.rmi.Remote, theCall : java.rmi.server.RemoteCall, opnum : Int, hash : haxe.Int64) : Void;
	
	/**
	* Returns the operations supported by the skeleton.
	* @return operations supported by skeleton
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function getOperations() : java.NativeArray<java.rmi.server.Operation>;
	
	
}
