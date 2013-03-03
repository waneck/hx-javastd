package com.sun.tools.internal.ws.processor.model.java;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
*
* @author WS Development Team
*/
extern class JavaStructureType extends com.sun.tools.internal.ws.processor.model.java.JavaType
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(name : String, present : Bool, owner : Dynamic) : Void;
	
	@:overload @:public public function add(m : com.sun.tools.internal.ws.processor.model.java.JavaStructureMember) : Void;
	
	@:overload @:public public function getMemberByName(name : String) : com.sun.tools.internal.ws.processor.model.java.JavaStructureMember;
	
	@:overload @:public public function getMembers() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getMembersCount() : Int;
	
	/* serialization */
	@:overload @:public public function getMembersList() : java.util.List<com.sun.tools.internal.ws.processor.model.java.JavaStructureMember>;
	
	/* serialization */
	@:overload @:public public function setMembersList(l : java.util.List<com.sun.tools.internal.ws.processor.model.java.JavaStructureMember>) : Void;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function setAbstract(isAbstract : Bool) : Void;
	
	@:overload @:public public function getSuperclass() : com.sun.tools.internal.ws.processor.model.java.JavaStructureType;
	
	@:overload @:public public function setSuperclass(superclassType : com.sun.tools.internal.ws.processor.model.java.JavaStructureType) : Void;
	
	@:overload @:public public function addSubclass(subclassType : com.sun.tools.internal.ws.processor.model.java.JavaStructureType) : Void;
	
	@:overload @:public public function getSubclasses() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getSubclassesSet() : java.util.Set<Dynamic>;
	
	/* serialization */
	@:overload @:public public function setSubclassesSet(s : java.util.Set<Dynamic>) : Void;
	
	@:overload @:public public function getAllSubclasses() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getAllSubclassesSet() : java.util.Set<Dynamic>;
	
	@:overload @:public public function getOwner() : Dynamic;
	
	@:overload @:public public function setOwner(owner : Dynamic) : Void;
	
	
}
