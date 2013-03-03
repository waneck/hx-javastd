package org.omg.CORBA;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
* The Holder for <tt>ServiceInformation</tt>.  For more information on
* Holder files, see <a href="doc-files/generatedfiles.html#holder">
* "Generated Files: Holder Files"</a>.<P>
* A Holder class for a <code>ServiceInformation</code> object
* that is used to store "out" and "inout" parameters in IDL methods.
* If an IDL method signature has an IDL <code>xxx</code> as an "out"
* or "inout" parameter, the programmer must pass an instance of
* <code>ServiceInformationHolder</code> as the corresponding
* parameter in the method invocation; for "inout" parameters, the programmer
* must also fill the "in" value to be sent to the server.
* Before the method invocation returns, the ORB will fill in the
* value corresponding to the "out" value returned from the server.
* <P>
* If <code>myServiceInformationHolder</code> is an instance of <code>ServiceInformationHolder</code>,
* the value stored in its <code>value</code> field can be accessed with
* <code>myServiceInformationHolder.value</code>.
*/
extern class ServiceInformationHolder implements org.omg.CORBA.portable.Streamable
{
	/**
	* The <code>ServiceInformation</code> value held by this
	* <code>ServiceInformationHolder</code> object in its <code>value</code> field.
	*/
	@:public public var value : org.omg.CORBA.ServiceInformation;
	
	/**
	* Constructs a new <code>ServiceInformationHolder</code> object with its
	* <code>value</code> field initialized to null.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>ServiceInformationHolder</code> object with its
	* <code>value</code> field initialized to the given
	* <code>ServiceInformation</code> object.
	*
	* @param arg the <code>ServiceInformation</code> object with which to initialize
	*                the <code>value</code> field of the newly-created
	*                <code>ServiceInformationHolder</code> object
	*/
	@:overload @:public public function new(arg : org.omg.CORBA.ServiceInformation) : Void;
	
	/**
	* Marshals the value in this <code>ServiceInformationHolder</code> object's
	* <code>value</code> field to the output stream <code>out</code>.
	*
	* @param out the <code>OutputStream</code> object that will contain
	*               the CDR formatted data
	*/
	@:overload @:public public function _write(out : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Reads unmarshalled data from the input stream <code>in</code> and assigns it to
	* the <code>value</code> field in this <code>ServiceInformationHolder</code> object.
	*
	* @param in the <code>InputStream</code> object containing CDR
	*              formatted data from the wire
	*/
	@:overload @:public public function _read(_in : org.omg.CORBA.portable.InputStream) : Void;
	
	/**
	* Retrieves the <code>TypeCode</code> object that corresponds
	* to the value held in this <code>ServiceInformationHolder</code> object's
	* <code>value</code> field.
	*
	* @return    the type code for the value held in this <code>ServiceInformationHolder</code>
	*            object
	*/
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
