package com.sun.xml.internal.xsom.visitor;
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
extern interface XSVisitor extends com.sun.xml.internal.xsom.visitor.XSTermVisitor extends com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor
{
	/**
	* Visitor for {@link com.sun.xml.internal.xsom.XSComponent}
	*/
	@:overload public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : Void;
	
	@:overload public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : Void;
	
	@:overload public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : Void;
	
	@:overload public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : Void;
	
	@:overload public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : Void;
	
	@:overload public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : Void;
	
	@:overload public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : Void;
	
	@:overload public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : Void;
	
	@:overload public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : Void;
	
	@:overload public function xpath(xp : com.sun.xml.internal.xsom.XSXPath) : Void;
	
	
}
