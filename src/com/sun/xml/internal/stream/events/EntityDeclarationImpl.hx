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
extern class EntityDeclarationImpl extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.EntityDeclaration
{
	/** Creates a new instance of EntityDeclarationImpl */
	@:overload public function new() : Void;
	
	@:overload public function new(entityName : String, replacementText : String) : Void;
	
	@:overload public function new(entityName : String, replacementText : String, resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : Void;
	
	@:overload public function setEntityName(entityName : String) : Void;
	
	@:overload public function getEntityName() : String;
	
	@:overload public function setEntityReplacementText(replacementText : String) : Void;
	
	@:overload public function setXMLResourceIdentifier(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : Void;
	
	@:overload public function getXMLResourceIdentifier() : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
	
	@:overload public function getSystemId() : String;
	
	@:overload public function getPublicId() : String;
	
	@:overload public function getBaseURI() : String;
	
	@:overload public function getName() : String;
	
	@:overload public function getNotationName() : String;
	
	@:overload public function setNotationName(notationName : String) : Void;
	
	@:overload public function getReplacementText() : String;
	
	@:overload private function init() : Void;
	
	@:overload override private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	
}
