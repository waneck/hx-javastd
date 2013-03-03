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
extern class CClassRef extends com.sun.tools.internal.xjc.model.AbstractCElement implements com.sun.tools.internal.xjc.model.nav.NClass implements com.sun.tools.internal.xjc.model.CClass
{
	/**
	*
	* @param decl
	*      The {@link BIClass} declaration that has {@link BIClass#getExistingClassRef()}
	*/
	@:overload @:public public function new(model : com.sun.tools.internal.xjc.model.Model, source : com.sun.xml.internal.xsom.XSComponent, decl : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIClass, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	/**
	*
	* @param decl
	*      The {@link BIClass} declaration that has {@link BIEnum#ref}
	*/
	@:overload @:public public function new(model : com.sun.tools.internal.xjc.model.Model, source : com.sun.xml.internal.xsom.XSComponent, decl : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIEnum, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload @:public override public function setAbstract() : Void;
	
	@:overload @:public override public function isAbstract() : Bool;
	
	@:overload @:public override public function getType() : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload @:public override public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JClass;
	
	@:overload @:public public function fullName() : String;
	
	@:overload @:public public function getTypeName() : javax.xml.namespace.QName;
	
	/**
	* Guaranteed to return this.
	*/
	@:overload @:public public function getInfo() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload @:public override public function getSubstitutionHead() : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public override public function getScope() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function isBoxedType() : Bool;
	
	@:overload @:public public function isSimpleType() : Bool;
	
	
}
