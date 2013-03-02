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
extern class RawTypeSetBuilder implements com.sun.xml.internal.xsom.visitor.XSTermVisitor
{
	/**
	* @param optional
	*      if this whole property is optional due to the
	*      occurrence constraints on ancestors, set this to true.
	*      this will prevent the primitive types to be generated.
	*/
	@:overload public static function build(p : com.sun.xml.internal.xsom.XSParticle, optional : Bool) : com.sun.tools.internal.xjc.reader.RawTypeSet;
	
	private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	@:overload public function new() : Void;
	
	/**
	* Gets the {@link RawTypeSet.Ref}s that were built.
	*/
	@:overload public function getRefs() : java.util.Set<com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref>;
	
	@:overload public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : Void;
	
	@:overload public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : Void;
	
	@:overload public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : Void;
	
	@:overload public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	
}
/**
* Reference to a wildcard.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$RawTypeSetBuilder$WildcardRef') extern class RawTypeSetBuilder_WildcardRef extends com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref
{
	@:overload override private function toTypeRef(ep : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : com.sun.tools.internal.xjc.model.CTypeRef;
	
	@:overload override private function toElementRef(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	@:overload override private function canBeType(parent : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Mode;
	
	@:overload override private function isListOfValues() : Bool;
	
	@:overload override private function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	
}
/**
* Reference to a class that maps from an element.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$RawTypeSetBuilder$CClassRef') extern class RawTypeSetBuilder_CClassRef extends com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref
{
	public var target(default, null) : com.sun.tools.internal.xjc.model.CClass;
	
	public var decl(default, null) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload override private function toTypeRef(ep : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : com.sun.tools.internal.xjc.model.CTypeRef;
	
	@:overload override private function toElementRef(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	@:overload override private function canBeType(parent : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Mode;
	
	@:overload override private function isListOfValues() : Bool;
	
	@:overload override private function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	
}
/**
* Reference to a class that maps from an element.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$RawTypeSetBuilder$CElementInfoRef') extern class RawTypeSetBuilder_CElementInfoRef extends com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref
{
	public var target(default, null) : com.sun.tools.internal.xjc.model.CElementInfo;
	
	public var decl(default, null) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload override private function toTypeRef(ep : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : com.sun.tools.internal.xjc.model.CTypeRef;
	
	@:overload override private function toElementRef(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	@:overload override private function canBeType(parent : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Mode;
	
	@:overload override private function isListOfValues() : Bool;
	
	@:overload override private function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload override private function getExpectedMimeType() : javax.activation.MimeType;
	
	
}
/**
* References to a type. Could be global or local.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$RawTypeSetBuilder$XmlTypeRef') extern class RawTypeSetBuilder_XmlTypeRef extends com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref
{
	@:overload public function new(decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload override private function toTypeRef(ep : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : com.sun.tools.internal.xjc.model.CTypeRef;
	
	/**
	* The whole type set can be later bound to a reference property,
	* in which case we need to generate additional code to wrap this
	* type reference into an element class.
	*
	* This method generates such an element class and returns it.
	*/
	@:overload override private function toElementRef(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	@:overload override private function canBeType(parent : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Mode;
	
	@:overload override private function isListOfValues() : Bool;
	
	@:overload override private function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload override private function getExpectedMimeType() : javax.activation.MimeType;
	
	
}
