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
extern class JavaStructureMember
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(name : String, type : com.sun.tools.internal.ws.processor.model.java.JavaType, owner : Dynamic) : Void;
	
	@:overload @:public public function new(name : String, type : com.sun.tools.internal.ws.processor.model.java.JavaType, owner : Dynamic, isPublic : Bool) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(s : String) : Void;
	
	@:overload @:public public function getType() : com.sun.tools.internal.ws.processor.model.java.JavaType;
	
	@:overload @:public public function setType(t : com.sun.tools.internal.ws.processor.model.java.JavaType) : Void;
	
	@:overload @:public public function isPublic() : Bool;
	
	@:overload @:public public function setPublic(b : Bool) : Void;
	
	@:overload @:public public function isInherited() : Bool;
	
	@:overload @:public public function setInherited(b : Bool) : Void;
	
	@:overload @:public public function getReadMethod() : String;
	
	@:overload @:public public function setReadMethod(readMethod : String) : Void;
	
	@:overload @:public public function getWriteMethod() : String;
	
	@:overload @:public public function setWriteMethod(writeMethod : String) : Void;
	
	@:overload @:public public function getDeclaringClass() : String;
	
	@:overload @:public public function setDeclaringClass(declaringClass : String) : Void;
	
	@:overload @:public public function getOwner() : Dynamic;
	
	@:overload @:public public function setOwner(owner : Dynamic) : Void;
	
	@:overload @:public public function getConstructorPos() : Int;
	
	@:overload @:public public function setConstructorPos(idx : Int) : Void;
	
	
}
