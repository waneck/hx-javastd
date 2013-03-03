package com.sun.corba.se.impl.presentation.rmi;
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
extern class DynamicStubImpl extends org.omg.CORBA.portable.ObjectImpl implements com.sun.corba.se.spi.presentation.rmi.DynamicStub implements java.io.Serializable
{
	@:overload @:public public function setSelf(self : com.sun.corba.se.spi.presentation.rmi.DynamicStub) : Void;
	
	@:overload @:public public function getSelf() : com.sun.corba.se.spi.presentation.rmi.DynamicStub;
	
	@:overload @:public public function new(typeIds : java.NativeArray<String>) : Void;
	
	@:overload @:public public function setDelegate(delegate : org.omg.CORBA.portable.Delegate) : Void;
	
	@:overload @:public public function getDelegate() : org.omg.CORBA.portable.Delegate;
	
	@:overload @:public public function getORB() : org.omg.CORBA.ORB;
	
	@:overload @:public override public function _ids() : java.NativeArray<String>;
	
	@:overload @:public public function getTypeIds() : java.NativeArray<String>;
	
	@:overload @:public public function connect(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload @:public public function isLocal() : Bool;
	
	@:overload @:public public function request(operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	@:overload @:public public function readResolve() : org.omg.CORBA.Object;
	
	
}
