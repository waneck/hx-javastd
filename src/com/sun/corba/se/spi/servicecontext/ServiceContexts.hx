package com.sun.corba.se.spi.servicecontext;
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
extern class ServiceContexts
{
	@:overload public static function writeNullServiceContext(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	/**
	* Read the Service contexts from the input stream.
	*/
	@:overload public function new(s : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload public function addAlignmentPadding() : Void;
	
	/**
	* Write the service contexts to the output stream.
	*
	* If they haven't been unmarshaled, we don't have to
	* unmarshal them.
	*/
	@:overload public function write(os : org.omg.CORBA_2_3.portable.OutputStream, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	/** Add a service context to the stream, if there is not already
	* a service context in this object with the same id as sc.
	*/
	@:overload public function put(sc : com.sun.corba.se.spi.servicecontext.ServiceContext) : Void;
	
	@:overload public function delete(scId : Int) : Void;
	
	@:overload public function delete(id : Null<Int>) : Void;
	
	@:overload public function get(scId : Int) : com.sun.corba.se.spi.servicecontext.ServiceContext;
	
	@:overload public function get(id : Null<Int>) : com.sun.corba.se.spi.servicecontext.ServiceContext;
	
	
}
