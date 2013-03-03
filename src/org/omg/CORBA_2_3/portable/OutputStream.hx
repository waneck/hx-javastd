package org.omg.CORBA_2_3.portable;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
/**
* OutputStream provides interface for writing of all of the mapped IDL type
* to the stream. It extends org.omg.CORBA.portable.OutputStream, and defines
* new methods defined by CORBA 2.3.
*
* @see org.omg.CORBA.portable.OutputStream
* @author  OMG
* @since   JDK1.2
*/
@:require(java2) extern class OutputStream extends org.omg.CORBA.portable.OutputStream
{
	/**
	* Marshals a value type to the output stream.
	* @param value is the acutal value to write
	*/
	@:overload @:public public function write_value(value : java.io.Serializable) : Void;
	
	/**
	* Marshals a value type to the output stream.
	* @param value is the acutal value to write
	* @param clz is the declared type of the value to be marshaled
	*/
	@:overload @:public public function write_value(value : java.io.Serializable, clz : Class<Dynamic>) : Void;
	
	/**
	* Marshals a value type to the output stream.
	* @param value is the acutal value to write
	* @param repository_id identifies the type of the value type to
	* be marshaled
	*/
	@:overload @:public public function write_value(value : java.io.Serializable, repository_id : String) : Void;
	
	/**
	* Marshals a value type to the output stream.
	* @param value is the acutal value to write
	* @param factory is the instance of the helper to be used for marshaling
	* the boxed value
	*/
	@:overload @:public public function write_value(value : java.io.Serializable, factory : org.omg.CORBA.portable.BoxedValueHelper) : Void;
	
	/**
	* Marshals a value object or a stub object.
	* @param obj the actual value object to marshal or the stub to be marshalled
	*/
	@:overload @:public public function write_abstract_interface(obj : Dynamic) : Void;
	
	
}
