package com.sun.corba.se.spi.ior;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface ObjectKeyTemplate extends com.sun.corba.se.spi.ior.Writeable
{
	/** An ObjectKeyTemplate represents the part of an Object Key
	* that corresponds to the object adapter used to create an
	* object reference.  The template is shared between many
	* object references.
	*/
	@:overload @:public public function getORBVersion() : com.sun.corba.se.spi.orb.ORBVersion;
	
	/** An ID used to determine how to perform operations on this
	* ObjectKeyTemplate.  This id determines how to process requests
	* on this object reference, and what object adapter type to use.
	*/
	@:overload @:public public function getSubcontractId() : Int;
	
	/** Return the server ID for this template.
	* For CORBA 3.0, this should be a String, but it is currently
	* an int in the object key template.
	*/
	@:overload @:public public function getServerId() : Int;
	
	/** Return the ORB ID for this template.
	*/
	@:overload @:public public function getORBId() : String;
	
	/** Return the object adapter ID for this template.
	*/
	@:overload @:public public function getObjectAdapterId() : com.sun.corba.se.spi.ior.ObjectAdapterId;
	
	/** Compute an adapter ID for this template than includes
	* all of the template information.
	* This value is cached to avoid the expense of recomputing
	* it.
	*/
	@:overload @:public public function getAdapterId() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function write(objectId : com.sun.corba.se.spi.ior.ObjectId, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload @:public public function getServerRequestDispatcher(orb : com.sun.corba.se.spi.orb.ORB, id : com.sun.corba.se.spi.ior.ObjectId) : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher;
	
	
}
