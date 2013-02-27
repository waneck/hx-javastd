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
extern class JavaInterface
{
	/**
	*
	* @author WS Development Team
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(name : String) : Void;
	
	@:overload public function new(name : String, impl : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getFormalName() : String;
	
	@:overload public function setFormalName(s : String) : Void;
	
	@:overload public function getRealName() : String;
	
	@:overload public function setRealName(s : String) : Void;
	
	@:overload public function getImpl() : String;
	
	@:overload public function setImpl(s : String) : Void;
	
	@:overload public function getMethods() : java.util.Iterator<Dynamic>;
	
	@:overload public function hasMethod(method : com.sun.tools.internal.ws.processor.model.java.JavaMethod) : Bool;
	
	@:overload public function addMethod(method : com.sun.tools.internal.ws.processor.model.java.JavaMethod) : Void;
	
	/* serialization */
	@:overload public function getMethodsList() : java.util.List<Dynamic>;
	
	/* serialization */
	@:overload public function setMethodsList(l : java.util.List<Dynamic>) : Void;
	
	@:overload public function hasInterface(interfaceName : String) : Bool;
	
	@:overload public function addInterface(interfaceName : String) : Void;
	
	@:overload public function getInterfaces() : java.util.Iterator<Dynamic>;
	
	/* serialization */
	@:overload public function getInterfacesList() : java.util.List<Dynamic>;
	
	/* serialization */
	@:overload public function setInterfacesList(l : java.util.List<Dynamic>) : Void;
	
	@:overload public function getSimpleName() : String;
	
	@:overload public function getJavaDoc() : String;
	
	@:overload public function setJavaDoc(javadoc : String) : Void;
	
	
}
