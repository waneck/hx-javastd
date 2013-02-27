package javax.xml.stream.events;
/*
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
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern interface Attribute extends javax.xml.stream.events.XMLEvent
{
	/**
	* Returns the QName for this attribute
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gets the normalized value of this attribute
	*/
	@:overload public function getValue() : String;
	
	/**
	* Gets the type of this attribute, default is
	* the String "CDATA"
	* @return the type as a String, default is "CDATA"
	*/
	@:overload public function getDTDType() : String;
	
	/**
	* A flag indicating whether this attribute was actually
	* specified in the start-tag of its element, or was defaulted from the schema.
	* @return returns true if this was specified in the start element
	*/
	@:overload public function isSpecified() : Bool;
	
	
}
