package com.sun.xml.internal.fastinfoset.stax.events;
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class EntityDeclarationImpl extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.EntityDeclaration
{
	/** Creates a new instance of EntityDeclarationImpl */
	@:overload public function new() : Void;
	
	@:overload public function new(entityName : String, replacement : String) : Void;
	
	/**
	* The entity's public identifier, or null if none was given
	* @return the public ID for this declaration or null
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* The entity's system identifier.
	* @return the system ID for this declaration or null
	*/
	@:overload override public function getSystemId() : String;
	
	/**
	* The entity's name
	* @return the name, may not be null
	*/
	@:overload public function getName() : String;
	
	/**
	* The name of the associated notation.
	* @return the notation name
	*/
	@:overload public function getNotationName() : String;
	
	/**
	* The replacement text of the entity.
	* This method will only return non-null
	* if this is an internal entity.
	* @return null or the replacment text
	*/
	@:overload public function getReplacementText() : String;
	
	/**
	* Get the base URI for this reference
	* or null if this information is not available
	* @return the base URI or null
	*/
	@:overload public function getBaseURI() : String;
	
	@:overload public function setPublicId(publicId : String) : Void;
	
	@:overload public function setSystemId(systemId : String) : Void;
	
	@:overload public function setBaseURI(baseURI : String) : Void;
	
	@:overload public function setName(entityName : String) : Void;
	
	@:overload public function setReplacementText(replacement : String) : Void;
	
	@:overload public function setNotationName(notationName : String) : Void;
	
	@:overload private function init() : Void;
	
	
}
