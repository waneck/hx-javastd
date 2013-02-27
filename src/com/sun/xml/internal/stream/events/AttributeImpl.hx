package com.sun.xml.internal.stream.events;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributeImpl extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.Attribute
{
	@:overload public function new() : Void;
	
	@:overload public function new(name : String, value : String) : Void;
	
	@:overload public function new(prefix : String, name : String, value : String) : Void;
	
	@:overload public function new(prefix : String, uri : String, localPart : String, value : String, type : String) : Void;
	
	@:overload public function new(prefix : String, uri : String, localPart : String, value : String, nonNormalizedvalue : String, type : String, isSpecified : Bool) : Void;
	
	@:overload public function new(qname : javax.xml.namespace.QName, value : String, nonNormalizedvalue : String, type : String, isSpecified : Bool) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function setName(name : javax.xml.namespace.QName) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setValue(value : String) : Void;
	
	@:overload public function getValue() : String;
	
	@:overload public function setNonNormalizedValue(nonNormalizedvalue : String) : Void;
	
	@:overload public function getNonNormalizedValue() : String;
	
	@:overload public function setAttributeType(attributeType : String) : Void;
	
	/** Gets the type of this attribute, default is "CDATA   */
	@:overload public function getDTDType() : String;
	
	/** is this attribute is specified in the instance document */
	@:overload public function setSpecified(isSpecified : Bool) : Void;
	
	@:overload public function isSpecified() : Bool;
	
	@:overload override private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	@:overload private function init() : Void;
	
	
}
