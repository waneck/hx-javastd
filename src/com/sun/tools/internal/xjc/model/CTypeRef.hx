package com.sun.tools.internal.xjc.model;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CTypeRef implements com.sun.xml.internal.bind.v2.model.core.TypeRef<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>
{
	@:public @:final public var defaultValue(default, null) : com.sun.xml.internal.xsom.XmlString;
	
	@:overload @:public public function new(type : com.sun.tools.internal.xjc.model.CNonElement, decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload @:public public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public @:static public static function getSimpleTypeName(decl : com.sun.xml.internal.xsom.XSElementDecl) : javax.xml.namespace.QName;
	
	@:overload @:public public function new(type : com.sun.tools.internal.xjc.model.CNonElement, elementName : javax.xml.namespace.QName, typeName : javax.xml.namespace.QName, nillable : Bool, defaultValue : com.sun.xml.internal.xsom.XmlString) : Void;
	
	@:overload @:public public function getTarget() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload @:public public function getTagName() : javax.xml.namespace.QName;
	
	@:overload @:public public function isNillable() : Bool;
	
	/**
	* Inside XJC, use {@link #defaultValue} that has context information.
	* This method is to override the one defined in the runtime model.
	*
	* @see #defaultValue
	*/
	@:overload @:public public function getDefaultValue() : String;
	
	@:overload @:public public function isLeaf() : Bool;
	
	@:overload @:public public function getSource() : com.sun.xml.internal.bind.v2.model.core.PropertyInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>;
	
	
}
