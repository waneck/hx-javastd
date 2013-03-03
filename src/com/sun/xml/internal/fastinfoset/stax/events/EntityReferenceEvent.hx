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
extern class EntityReferenceEvent extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.EntityReference
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(entityName : String, entityDeclaration : javax.xml.stream.events.EntityDeclaration) : Void;
	
	/**
	* The name of the entity
	* @return the entity's name, may not be null
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the declaration of this entity.
	*/
	@:overload @:public public function getDeclaration() : javax.xml.stream.events.EntityDeclaration;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function setDeclaration(declaration : javax.xml.stream.events.EntityDeclaration) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function init() : Void;
	
	
}
