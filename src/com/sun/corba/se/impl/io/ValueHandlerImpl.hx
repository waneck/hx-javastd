package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class ValueHandlerImpl implements javax.rmi.CORBA.ValueHandlerMultiFormat
{
	public static var FORMAT_VERSION_PROPERTY(default, null) : String;
	
	public static var kRemoteType(default, null) : java.StdTypes.Int16;
	
	public static var kAbstractType(default, null) : java.StdTypes.Int16;
	
	public static var kValueType(default, null) : java.StdTypes.Int16;
	
	@:overload public function getMaximumStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload public function writeValue(out : org.omg.CORBA.portable.OutputStream, value : java.io.Serializable, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	/**
	* Writes the value to the stream using java semantics.
	* @param out The stream to write the value to
	* @param value The value to be written to the stream
	**/
	@:overload public function writeValue(_out : org.omg.CORBA.portable.OutputStream, value : java.io.Serializable) : Void;
	
	/**
	* Reads a value from the stream using java semantics.
	* @param in The stream to read the value from
	* @param clazz The type of the value to be read in
	* @param sender The sending context runtime
	**/
	@:overload public function readValue(_in : org.omg.CORBA.portable.InputStream, offset : Int, clazz : Class<Dynamic>, repositoryID : String, _sender : org.omg.SendingContext.RunTime) : java.io.Serializable;
	
	/**
	* Returns the repository ID for the given RMI value Class.
	* @param clz The class to return a repository ID for.
	* @return the repository ID of the Class.
	**/
	@:overload public function getRMIRepositoryID(clz : Class<Dynamic>) : String;
	
	/**
	* Indicates whether the given Class performs custom or
	* default marshaling.
	* @param clz The class to test for custom marshaling.
	* @return True if the class performs custom marshaling, false
	* if it does not.
	**/
	@:overload public function isCustomMarshaled(clz : Class<Dynamic>) : Bool;
	
	/**
	* Returns the CodeBase for this ValueHandler.  This is used by
	* the ORB runtime.  The server sends the service context containing
	* the IOR for this CodeBase on the first GIOP reply.  The clients
	* do the same on the first GIOP request.
	* @return the SendingContext.CodeBase of this ValueHandler.
	**/
	@:overload public function getRunTimeCodeBase() : org.omg.SendingContext.RunTime;
	
	/**
	*  Returns a boolean of whether or not RepositoryId indicates
	*  FullValueDescriptor.
	*  used for backward compatability
	*/
	@:overload public function useFullValueDescription(clazz : Class<Dynamic>, repositoryID : String) : Bool;
	
	@:overload public function getClassName(id : String) : String;
	
	@:overload public function getClassFromType(id : String) : Class<Dynamic>;
	
	@:overload public function getAnyClassFromType(id : String) : Class<Dynamic>;
	
	@:overload public function createForAnyType(cl : Class<Dynamic>) : String;
	
	@:overload public function getDefinedInId(id : String) : String;
	
	@:overload public function getUnqualifiedName(id : String) : String;
	
	@:overload public function getSerialVersionUID(id : String) : String;
	
	@:overload public function isAbstractBase(clazz : Class<Dynamic>) : Bool;
	
	@:overload public function isSequence(id : String) : Bool;
	
	/**
	* If the value contains a writeReplace method then the result
	* is returned.  Otherwise, the value itself is returned.
	* @return the true value to marshal on the wire.
	**/
	@:overload public function writeReplace(value : java.io.Serializable) : java.io.Serializable;
	
	
}
