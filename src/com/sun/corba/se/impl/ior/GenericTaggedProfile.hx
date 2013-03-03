package com.sun.corba.se.impl.ior;
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
extern class GenericTaggedProfile extends com.sun.corba.se.impl.ior.GenericIdentifiable implements com.sun.corba.se.spi.ior.TaggedProfile
{
	@:overload @:public public function new(id : Int, is : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, id : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function getTaggedProfileTemplate() : com.sun.corba.se.spi.ior.TaggedProfileTemplate;
	
	@:overload @:public public function getObjectId() : com.sun.corba.se.spi.ior.ObjectId;
	
	@:overload @:public public function getObjectKeyTemplate() : com.sun.corba.se.spi.ior.ObjectKeyTemplate;
	
	@:overload @:public public function getObjectKey() : com.sun.corba.se.spi.ior.ObjectKey;
	
	@:overload @:public public function isEquivalent(prof : com.sun.corba.se.spi.ior.TaggedProfile) : Bool;
	
	@:overload @:public public function makeImmutable() : Void;
	
	@:overload @:public public function isLocal() : Bool;
	
	@:overload @:public public function getIOPProfile() : org.omg.IOP.TaggedProfile;
	
	
}
