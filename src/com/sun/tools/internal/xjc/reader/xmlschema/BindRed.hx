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
extern class BindRed extends com.sun.tools.internal.xjc.reader.xmlschema.ColorBinder
{
	@:overload @:public override public function complexType(ct : com.sun.xml.internal.xsom.XSComplexType) : Void;
	
	@:overload @:public override public function wildcard(xsWildcard : com.sun.xml.internal.xsom.XSWildcard) : Void;
	
	@:overload @:public override public function elementDecl(e : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload @:public override public function simpleType(type : com.sun.xml.internal.xsom.XSSimpleType) : Void;
	
	/*
	Components that can never be mapped to a class
*/
	@:overload @:public override public function attGroupDecl(ag : com.sun.xml.internal.xsom.XSAttGroupDecl) : Void;
	
	@:overload @:public override public function attributeDecl(ad : com.sun.xml.internal.xsom.XSAttributeDecl) : Void;
	
	@:overload @:public override public function attributeUse(au : com.sun.xml.internal.xsom.XSAttributeUse) : Void;
	
	@:overload @:public override public function empty(xsContentType : com.sun.xml.internal.xsom.XSContentType) : Void;
	
	@:overload @:public override public function modelGroupDecl(xsModelGroupDecl : com.sun.xml.internal.xsom.XSModelGroupDecl) : Void;
	
	@:overload @:public override public function modelGroup(xsModelGroup : com.sun.xml.internal.xsom.XSModelGroup) : Void;
	
	@:overload @:public override public function particle(p : com.sun.xml.internal.xsom.XSParticle) : Void;
	
	
}
