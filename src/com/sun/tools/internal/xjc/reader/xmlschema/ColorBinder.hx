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
@:internal extern class ColorBinder extends com.sun.tools.internal.xjc.reader.xmlschema.BindingComponent implements com.sun.xml.internal.xsom.visitor.XSVisitor
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	@:protected @:final private var selector(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.ClassSelector;
	
	@:overload @:protected @:final private function getCurrentBean() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload @:protected @:final private function getCurrentRoot() : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload @:protected @:final private function createSimpleTypeProperty(type : com.sun.xml.internal.xsom.XSSimpleType, propName : String) : Void;
	
	@:overload @:public @:final public function annotation(xsAnnotation : com.sun.xml.internal.xsom.XSAnnotation) : Void;
	
	@:overload @:public @:final public function schema(xsSchema : com.sun.xml.internal.xsom.XSSchema) : Void;
	
	@:overload @:public @:final public function facet(xsFacet : com.sun.xml.internal.xsom.XSFacet) : Void;
	
	@:overload @:public @:final public function notation(xsNotation : com.sun.xml.internal.xsom.XSNotation) : Void;
	
	@:overload @:public @:final public function identityConstraint(xsIdentityConstraint : com.sun.xml.internal.xsom.XSIdentityConstraint) : Void;
	
	@:overload @:public @:final public function xpath(xsxPath : com.sun.xml.internal.xsom.XSXPath) : Void;
	
	@:overload @:public public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : Void;
	
	@:overload @:public public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	/**
	* Visitor that works on {@link XSContentType}.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload @:public public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : Void;
	
	@:overload @:public public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : Void;
	
	@:overload @:public public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : Void;
	
	@:overload @:public public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : Void;
	
	@:overload @:public public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : Void;
	
	/**
	* Visitor that works on {@link com.sun.xml.internal.xsom.XSTerm}.
	*
	* @author
	*  Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload @:public public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : Void;
	
	@:overload @:public public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : Void;
	
	@:overload @:public public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : Void;
	
	@:overload @:public public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : Void;
	
	
}
