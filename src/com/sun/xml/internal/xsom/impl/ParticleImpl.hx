package com.sun.xml.internal.xsom.impl;
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
extern class ParticleImpl extends com.sun.xml.internal.xsom.impl.ComponentImpl implements com.sun.xml.internal.xsom.XSParticle implements com.sun.xml.internal.xsom.impl.ContentTypeImpl
{
	@:overload public function new(owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _ann : com.sun.xml.internal.xsom.impl.AnnotationImpl, _term : com.sun.xml.internal.xsom.impl.Ref.Ref_Term, _loc : org.xml.sax.Locator, _maxOccurs : java.math.BigInteger, _minOccurs : java.math.BigInteger) : Void;
	
	@:overload public function new(owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _ann : com.sun.xml.internal.xsom.impl.AnnotationImpl, _term : com.sun.xml.internal.xsom.impl.Ref.Ref_Term, _loc : org.xml.sax.Locator, _maxOccurs : Int, _minOccurs : Int) : Void;
	
	@:overload public function new(owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _ann : com.sun.xml.internal.xsom.impl.AnnotationImpl, _term : com.sun.xml.internal.xsom.impl.Ref.Ref_Term, _loc : org.xml.sax.Locator) : Void;
	
	@:overload public function getTerm() : com.sun.xml.internal.xsom.XSTerm;
	
	@:overload public function getMaxOccurs() : java.math.BigInteger;
	
	@:overload public function isRepeated() : Bool;
	
	@:overload public function getMinOccurs() : java.math.BigInteger;
	
	@:overload public function redefine(oldMG : com.sun.xml.internal.xsom.impl.ModelGroupDeclImpl) : Void;
	
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function asParticle() : com.sun.xml.internal.xsom.XSParticle;
	
	@:overload public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:final override public function apply(_function : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>) : Dynamic;
	
	@:overload @:final public function apply(_function : com.sun.xml.internal.xsom.visitor.XSContentTypeFunction<Dynamic>) : Dynamic;
	
	@:overload @:final override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload @:final public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor) : Void;
	
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	/**
	* Foreign attribuets are considered to be on terms.
	*
	* REVISIT: is this a good design?
	*/
	@:overload public function getForeignAttributes() : java.util.List<Dynamic>;
	
	
}
