package com.sun.tools.internal.ws.processor.model;
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
extern class AbstractType
{
	/**
	*
	* @author WS Development Team
	*/
	@:overload private function new() : Void;
	
	@:overload private function new(name : javax.xml.namespace.QName) : Void;
	
	@:overload private function new(name : javax.xml.namespace.QName, version : String) : Void;
	
	@:overload private function new(name : javax.xml.namespace.QName, javaType : com.sun.tools.internal.ws.processor.model.java.JavaType) : Void;
	
	@:overload private function new(name : javax.xml.namespace.QName, javaType : com.sun.tools.internal.ws.processor.model.java.JavaType, version : String) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(name : javax.xml.namespace.QName) : Void;
	
	@:overload public function getJavaType() : com.sun.tools.internal.ws.processor.model.java.JavaType;
	
	@:overload public function setJavaType(javaType : com.sun.tools.internal.ws.processor.model.java.JavaType) : Void;
	
	@:overload public function getVersion() : String;
	
	@:overload public function setVersion(version : String) : Void;
	
	@:overload public function isNillable() : Bool;
	
	@:overload public function isSOAPType() : Bool;
	
	@:overload public function isLiteralType() : Bool;
	
	@:overload public function getProperty(key : String) : Dynamic;
	
	@:overload public function setProperty(key : String, value : Dynamic) : Void;
	
	@:overload public function removeProperty(key : String) : Void;
	
	@:overload public function getProperties() : java.util.Iterator<Dynamic>;
	
	/* serialization */
	@:overload public function getPropertiesMap() : java.util.Map<Dynamic, Dynamic>;
	
	/* serialization */
	@:overload public function setPropertiesMap(m : java.util.Map<Dynamic, Dynamic>) : Void;
	
	
}
