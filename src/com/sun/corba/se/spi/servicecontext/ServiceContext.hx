package com.sun.corba.se.spi.servicecontext;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ServiceContext
{
	/** Simple default constructor used when subclass is constructed
	* from its representation.
	*/
	@:overload private function new() : Void;
	
	/** Stream constructor used when subclass is constructed from an
	* InputStream.  This constructor must be called by super( stream )
	* in the subclass.  After this constructor completes, the service
	* context representation can be read from in.
	* Note that the service context id has been consumed from the input
	* stream before this object is constructed.
	*/
	@:overload private function new(s : org.omg.CORBA_2_3.portable.InputStream, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	/** Returns Service context id.  Must be overloaded in subclass.
	*/
	@:overload @:abstract public function getId() : Int;
	
	/** Write the service context to an output stream.  This method
	* must be used for writing the service context to a request or reply
	* header.
	*/
	@:overload public function write(s : org.omg.CORBA_2_3.portable.OutputStream, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	/** Writes the data used to represent the subclasses service context
	* into an encapsulation stream.  Must be overloaded in subclass.
	*/
	@:overload @:abstract private function writeData(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** in is the stream containing the service context representation.
	* It is constructed by the stream constructor, and available for use
	* in the subclass stream constructor.
	*/
	//private var _in : org.omg.CORBA_2_3.portable.InputStream;
	
	@:overload public function toString() : String;
	
	
}
