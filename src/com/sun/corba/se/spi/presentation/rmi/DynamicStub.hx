package com.sun.corba.se.spi.presentation.rmi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface DynamicStub extends org.omg.CORBA.Object
{
	/** Similar to ObjectImpl._set_delegate
	*/
	@:overload public function setDelegate(delegate : org.omg.CORBA.portable.Delegate) : Void;
	
	/** Similar to ObjectImpl._get_delegate
	*/
	@:overload public function getDelegate() : org.omg.CORBA.portable.Delegate;
	
	/** Similar to ObjectImpl._orb()
	*/
	@:overload public function getORB() : org.omg.CORBA.ORB;
	
	/** Similar to ObjectImpl._ids
	*/
	@:overload public function getTypeIds() : java.NativeArray<String>;
	
	/** Connect this dynamic stub to an ORB.
	* Just as in standard RMI-IIOP, this is required after
	* a dynamic stub is deserialized from an ObjectInputStream.
	* It is not needed when unmarshalling from a
	* org.omg.CORBA.portable.InputStream.
	*/
	@:overload public function connect(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload public function isLocal() : Bool;
	
	@:overload public function request(operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	
}
