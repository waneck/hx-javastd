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
extern class WireObjectKeyTemplate implements com.sun.corba.se.spi.ior.ObjectKeyTemplate
{
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function new(is : org.omg.CORBA_2_3.portable.InputStream, osh : org.omg.CORBA.OctetSeqHolder) : Void;
	
	@:overload @:public public function write(id : com.sun.corba.se.spi.ior.ObjectId, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload @:public public function write(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload @:public public function getSubcontractId() : Int;
	
	/** While it might make sense to throw an exception here, this causes
	* problems since we need to check whether unusual object references
	* are local or not.  It seems that the easiest way to handle this is
	* to return an invalid server id.
	*/
	@:overload @:public public function getServerId() : Int;
	
	@:overload @:public public function getORBId() : String;
	
	@:overload @:public public function getObjectAdapterId() : com.sun.corba.se.spi.ior.ObjectAdapterId;
	
	/** Adapter ID is not available, since our
	* ORB did not implement the object carrying this key.
	*/
	@:overload @:public public function getAdapterId() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	@:overload @:public public function getServerRequestDispatcher(orb : com.sun.corba.se.spi.orb.ORB, id : com.sun.corba.se.spi.ior.ObjectId) : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher;
	
	
}
