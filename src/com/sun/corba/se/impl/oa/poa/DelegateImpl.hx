package com.sun.corba.se.impl.oa.poa;
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
extern class DelegateImpl implements org.omg.PortableServer.portable.Delegate
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, factory : com.sun.corba.se.impl.oa.poa.POAFactory) : Void;
	
	@:overload public function orb(self : org.omg.PortableServer.Servant) : org.omg.CORBA.ORB;
	
	@:overload public function this_object(self : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	@:overload public function poa(self : org.omg.PortableServer.Servant) : org.omg.PortableServer.POA;
	
	@:overload public function object_id(self : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function default_POA(self : org.omg.PortableServer.Servant) : org.omg.PortableServer.POA;
	
	@:overload public function is_a(self : org.omg.PortableServer.Servant, repId : String) : Bool;
	
	@:overload public function non_existent(self : org.omg.PortableServer.Servant) : Bool;
	
	@:overload public function get_interface_def(Self : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	
}
