package com.sun.xml.internal.xsom.util;
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
extern class NameGetter implements com.sun.xml.internal.xsom.visitor.XSFunction<String>
{
	/**
	* Initializes a NameGetter so that it will return
	* messages in the specified locale.
	*/
	@:overload @:public public function new(_locale : java.util.Locale) : Void;
	
	/**
	* An instance that gets names in the default locale.
	* This instance is provided just for convenience.
	*/
	@:public @:final @:static public static var theInstance(default, null) : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>;
	
	/**
	* Gets the name of the specified component in the default locale.
	* This method is just a wrapper.
	*/
	@:overload @:public @:static public static function get(comp : com.sun.xml.internal.xsom.XSComponent) : String;
	
	@:overload @:public public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : String;
	
	@:overload @:public public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : String;
	
	@:overload @:public public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : String;
	
	@:overload @:public public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : String;
	
	@:overload @:public public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : String;
	
	@:overload @:public public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : String;
	
	@:overload @:public public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : String;
	
	@:overload @:public public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : String;
	
	@:overload @:public public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : String;
	
	@:overload @:public public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : String;
	
	@:overload @:public public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : String;
	
	@:overload @:public public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : String;
	
	@:overload @:public public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : String;
	
	@:overload @:public public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : String;
	
	@:overload @:public public function notation(n : com.sun.xml.internal.xsom.XSNotation) : String;
	
	@:overload @:public public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : String;
	
	@:overload @:public public function xpath(xpath : com.sun.xml.internal.xsom.XSXPath) : String;
	
	
}
