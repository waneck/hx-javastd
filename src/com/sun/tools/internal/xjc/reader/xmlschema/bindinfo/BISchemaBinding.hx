package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
extern class BISchemaBinding extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/**
	* If false, it means not to generate any classes from this namespace.
	* No ObjectFactory, no classes (the only way to bind them is by using
	* &lt;jaxb:class ref="..."/>)
	*/
	@:public public var map : Bool;
	
	/**
	* Transforms the default name produced from XML name
	* by following the customization.
	*
	* This shouldn't be applied to a class name specified
	* by a customization.
	*
	* @param cmp
	*      The schema component from which the default name is derived.
	*/
	@:overload @:public public function mangleClassName(name : String, cmp : com.sun.xml.internal.xsom.XSComponent) : String;
	
	@:overload @:public public function mangleAnonymousTypeClassName(name : String) : String;
	
	@:overload @:public public function getPackageName() : String;
	
	@:overload @:public public function getJavadoc() : String;
	
	@:overload @:public override public function getName() : javax.xml.namespace.QName;
	
	@:public @:static @:final public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
/**
* Name conversion rules. All defaults to {@link BISchemaBinding#defaultNamingRule}.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BISchemaBinding$NameRules') @:internal extern class BISchemaBinding_NameRules
{
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BISchemaBinding$PackageInfo') @:internal extern class BISchemaBinding_PackageInfo
{
	
}
/**
* Default naming rules of the generated interfaces.
*
* It simply adds prefix and suffix to the name, but
* the caller shouldn't care how the name mangling is
* done.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BISchemaBinding$NamingRule') extern class BISchemaBinding_NamingRule
{
	@:overload @:public public function new(_prefix : String, _suffix : String) : Void;
	
	@:overload @:public public function new() : Void;
	
	/** Changes the name according to the rule. */
	@:overload @:public public function mangle(originalName : String) : String;
	
	
}
