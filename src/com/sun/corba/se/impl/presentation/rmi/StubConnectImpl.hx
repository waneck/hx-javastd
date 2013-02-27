package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class StubConnectImpl
{
	/** Connect the stub to the orb if necessary.
	* @param ior The StubIORImpl for this stub (may be null)
	* @param proxy The externally visible stub seen by the user (may be the same as stub)
	* @param stub The stub implementation that extends ObjectImpl
	* @param orb The ORB to which we connect the stub.
	*/
	@:overload public static function connect(ior : com.sun.corba.se.impl.ior.StubIORImpl, proxy : org.omg.CORBA.Object, stub : org.omg.CORBA.portable.ObjectImpl, orb : org.omg.CORBA.ORB) : com.sun.corba.se.impl.ior.StubIORImpl;
	
	
}
