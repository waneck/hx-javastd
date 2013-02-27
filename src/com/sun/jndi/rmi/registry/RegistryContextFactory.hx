package com.sun.jndi.rmi.registry;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class RegistryContextFactory implements javax.naming.spi.ObjectFactory implements javax.naming.spi.InitialContextFactory
{
	/**
	* The type of each address in an RMI registry reference.
	*/
	public static var ADDRESS_TYPE(default, null) : String;
	
	@:overload public function getInitialContext(env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.Context;
	
	@:overload public function getObjectInstance(ref : Dynamic, name : javax.naming.Name, nameCtx : javax.naming.Context, env : java.util.Hashtable<Dynamic, Dynamic>) : Dynamic;
	
	
}
