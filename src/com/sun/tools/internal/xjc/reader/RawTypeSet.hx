package com.sun.tools.internal.xjc.reader;
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
extern class RawTypeSet
{
	/**
	* Set of {@link Ref}.
	*
	* @author Kohsuke Kawaguchi
	*/
	public var refs(default, null) : java.util.Set<com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref>;
	
	/**
	* The occurence of the whole references.
	*/
	public var mul(default, null) : com.sun.tools.internal.xjc.model.Multiplicity;
	
	/**
	* Should be called from one of the raw type set builders.
	*/
	@:overload public function new(refs : java.util.Set<com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Ref>, m : com.sun.tools.internal.xjc.model.Multiplicity) : Void;
	
	@:overload public function getCollectionMode() : com.sun.tools.internal.xjc.model.CElementPropertyInfo.CElementPropertyInfo_CollectionMode;
	
	@:overload public function isRequired() : Bool;
	
	@:overload public function addTo(prop : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : Void;
	
	@:overload public function addTo(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	@:overload public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	
}
/**
* Represents the possible binding option for this {@link RawTypeSet}.
*/
@:native('com$sun$tools$internal$xjc$reader$RawTypeSet$Mode') extern enum RawTypeSet_Mode
{
	/**
	* This {@link RawTypeSet} can be either an reference property or
	* an element property, and XJC recommends element property.
	*/
	SHOULD_BE_TYPEREF;
	/**
	* This {@link RawTypeSet} can be either an reference property or
	* an element property, and XJC recommends reference property.
	*/
	CAN_BE_TYPEREF;
	/**
	* This {@link RawTypeSet} can be only bound to a reference property.
	*/
	MUST_BE_REFERENCE;
	
}

/**
* A reference to something.
*
* <p>
* A {@link Ref} can be either turned into {@link CTypeRef} to form
* an element property, or {@link Element} to form a reference property.
*/
@:native('com$sun$tools$internal$xjc$reader$RawTypeSet$Ref') extern class RawTypeSet_Ref
{
	/**
	* @param ep
	*      the property to which the returned {@link CTypeRef} will be
	*      added to.
	*/
	@:overload @:abstract private function toTypeRef(ep : com.sun.tools.internal.xjc.model.CElementPropertyInfo) : com.sun.tools.internal.xjc.model.CTypeRef;
	
	@:overload @:abstract private function toElementRef(prop : com.sun.tools.internal.xjc.model.CReferencePropertyInfo) : Void;
	
	/**
	* Can this {@link Ref} be a type ref?
	* @return false to veto.
	* @param parent
	*/
	@:overload @:abstract private function canBeType(parent : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.reader.RawTypeSet.RawTypeSet_Mode;
	
	@:overload @:abstract private function isListOfValues() : Bool;
	
	/**
	* When this {@link RawTypeSet} binds to a {@link CElementPropertyInfo},
	* this method is used to determine if the property is ID or not.
	*/
	@:overload @:abstract private function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	/**
	* When this {@link RawTypeSet} binds to a {@link CElementPropertyInfo},
	* this method is used to determine if the property has an associated expected MIME type or not.
	*/
	@:overload private function getExpectedMimeType() : javax.activation.MimeType;
	
	
}
