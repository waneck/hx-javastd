package com.sun.tools.internal.xjc.reader.xmlschema;
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
@:internal extern class DefaultClassBinder implements com.sun.tools.internal.xjc.reader.xmlschema.ClassBinder
{
	@:protected @:final private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	@:protected @:final private var selector(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.ClassSelector;
	
	@:protected @:final private var schemas(default, null) : com.sun.xml.internal.xsom.XSSchemaSet;
	
	@:overload @:public public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function modelGroup(mgroup : com.sun.xml.internal.xsom.XSModelGroup) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function empty(ct : com.sun.xml.internal.xsom.XSContentType) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function identityConstraint(xsIdentityConstraint : com.sun.xml.internal.xsom.XSIdentityConstraint) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function xpath(xsxPath : com.sun.xml.internal.xsom.XSXPath) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function simpleType(type : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload @:public public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function annotation(annon : com.sun.xml.internal.xsom.XSAnnotation) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function notation(not : com.sun.xml.internal.xsom.XSNotation) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function facet(decl : com.sun.xml.internal.xsom.XSFacet) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:public public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	
}
