package com.sun.corba.se.impl.protocol.giopmsgheaders;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* com/sun/corba/se/impl/protocol/giopmsgheaders/TargetAddress.java
* Generated by the IDL-to-Java compiler (portable), version "3.0"
* from ../../../../../../../src/share/classes/com/sun/corba/se/GiopIDL/g.idl
* Sunday, June 4, 2000 5:18:54 PM PDT
*/
extern class TargetAddress implements org.omg.CORBA.portable.IDLEntity
{
	@:overload public function new() : Void;
	
	@:overload public function discriminator() : java.StdTypes.Int16;
	
	@:overload public function object_key() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function object_key(value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function profile() : org.omg.IOP.TaggedProfile;
	
	@:overload public function profile(value : org.omg.IOP.TaggedProfile) : Void;
	
	@:overload public function ior() : com.sun.corba.se.impl.protocol.giopmsgheaders.IORAddressingInfo;
	
	@:overload public function ior(value : com.sun.corba.se.impl.protocol.giopmsgheaders.IORAddressingInfo) : Void;
	
	@:overload public function _default() : Void;
	
	
}
