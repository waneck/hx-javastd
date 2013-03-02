package com.sun.xml.internal.xsom.impl.parser;
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
extern class DelayedRef implements com.sun.xml.internal.xsom.impl.parser.Patch
{
	/**
	* Patch implementation. Makes sure that the name resolves
	* to a schema component.
	*/
	@:overload public function run() : Void;
	
	private var schema(default, null) : com.sun.xml.internal.xsom.XSSchemaSet;
	
	@:overload @:abstract private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload @:abstract private function getErrorProperty() : String;
	
	@:overload @:final private function _get() : Dynamic;
	
	/**
	* If this reference refers to the given declaration,
	* resolve the reference now. This is used to implement redefinition.
	*/
	@:overload public function redefine(d : com.sun.xml.internal.xsom.XSDeclaration) : Void;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$Type') extern class DelayedRef_Type extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_Type
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$SimpleType') extern class DelayedRef_SimpleType extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_SimpleType
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$ComplexType') extern class DelayedRef_ComplexType extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_ComplexType
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSComplexType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$Element') extern class DelayedRef_Element extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_Element
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function get() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function getTerm() : com.sun.xml.internal.xsom.XSTerm;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$ModelGroup') extern class DelayedRef_ModelGroup extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_Term
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function get() : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload public function getTerm() : com.sun.xml.internal.xsom.XSTerm;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$AttGroup') extern class DelayedRef_AttGroup extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_AttGroup
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function get() : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$Attribute') extern class DelayedRef_Attribute extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_Attribute
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function getAttribute() : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$DelayedRef$IdentityConstraint') extern class DelayedRef_IdentityConstraint extends com.sun.xml.internal.xsom.impl.parser.DelayedRef implements com.sun.xml.internal.xsom.impl.Ref.Ref_IdentityConstraint
{
	@:overload public function new(manager : com.sun.xml.internal.xsom.impl.parser.PatcherManager, loc : org.xml.sax.Locator, schema : com.sun.xml.internal.xsom.impl.SchemaImpl, name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload override private function resolveReference(name : com.sun.xml.internal.xsom.impl.UName) : Dynamic;
	
	@:overload override private function getErrorProperty() : String;
	
	@:overload public function get() : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	
}
