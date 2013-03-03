package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A factory for creating <code>SOAPConnection</code> objects. Implementation of this class
* is optional. If <code>SOAPConnectionFactory.newInstance()</code> throws an
* UnsupportedOperationException then the implementation does not support the
* SAAJ communication infrastructure. Otherwise {@link SOAPConnection} objects
* can be created by calling <code>createConnection()</code> on the newly
* created <code>SOAPConnectionFactory</code> object.
*/
extern class SOAPConnectionFactory
{
	/**
	* Creates an instance of the default
	* <code>SOAPConnectionFactory</code> object.
	*
	* @return a new instance of a default
	*         <code>SOAPConnectionFactory</code> object
	*
	* @exception SOAPException if there was an error creating the
	*            <code>SOAPConnectionFactory</code>
	*
	* @exception UnsupportedOperationException if newInstance is not
	* supported.
	*/
	@:overload @:public @:static public static function newInstance() : javax.xml.soap.SOAPConnectionFactory;
	
	/**
	* Create a new <code>SOAPConnection</code>.
	*
	* @return the new <code>SOAPConnection</code> object.
	*
	* @exception SOAPException if there was an exception creating the
	* <code>SOAPConnection</code> object.
	*/
	@:overload @:public @:abstract public function createConnection() : javax.xml.soap.SOAPConnection;
	
	
}
