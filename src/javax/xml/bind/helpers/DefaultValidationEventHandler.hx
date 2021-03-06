package javax.xml.bind.helpers;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultValidationEventHandler implements javax.xml.bind.ValidationEventHandler
{
	/**
	* <p>
	* JAXB 1.0 only default validation event handler. This is the default
	* handler for all objects created from a JAXBContext that is managing
	* schema-derived code generated by a JAXB 1.0 binding compiler.
	*
	* <p>
	* This handler causes the unmarshal and validate operations to fail on the first
	* error or fatal error.
	*
	* <p>
	* This handler is not the default handler for JAXB mapped classes following
	* JAXB 2.0 or later versions. Default validation event handling has changed
	* and is specified in  {@link javax.xml.bind.Unmarshaller} and
	* {@link javax.xml.bind.Marshaller}.
	*
	* @author <ul><li>Ryan Shoemaker, Sun Microsystems, Inc.</li></ul>
	* @see javax.xml.bind.Unmarshaller
	* @see javax.xml.bind.Validator
	* @see javax.xml.bind.ValidationEventHandler
	* @since JAXB1.0
	*/
	@:require(java0) @:overload @:public public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	
}
