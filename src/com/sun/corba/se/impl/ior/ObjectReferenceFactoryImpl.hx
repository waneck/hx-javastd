package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectReferenceFactoryImpl extends com.sun.corba.se.impl.ior.ObjectReferenceProducerBase implements org.omg.PortableInterceptor.ObjectReferenceFactory implements org.omg.CORBA.portable.StreamableValue
{
	@:overload @:public public function new(is : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, iortemps : com.sun.corba.se.spi.ior.IORTemplateList) : Void;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:public @:static @:final public static var repositoryId(default, null) : String;
	
	@:overload @:public public function _truncatable_ids() : java.NativeArray<String>;
	
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	/** Read the data into a (presumably) empty ObjectReferenceFactoryImpl.
	* This sets the orb to the ORB of the InputStream.
	*/
	@:overload @:public public function _read(is : org.omg.CORBA.portable.InputStream) : Void;
	
	/** Write the state to the OutputStream.
	*/
	@:overload @:public public function _write(os : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public override public function getIORFactory() : com.sun.corba.se.spi.ior.IORFactory;
	
	@:overload @:public override public function getIORTemplateList() : com.sun.corba.se.spi.ior.IORTemplateList;
	
	
}
