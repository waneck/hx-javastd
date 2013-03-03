package com.sun.xml.internal.bind.v2.schemagen;
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
@:internal extern class Tree
{
	/**
	* Writes out the content model.
	*
	* Normall this runs recursively until we write out the whole content model.
	*/
	@:overload @:protected @:abstract private function write(parent : com.sun.xml.internal.bind.v2.schemagen.xmlschema.ContentModelContainer, isOptional : Bool, repeated : Bool) : Void;
	
	/**
	* Writes inside the given complex type.
	*/
	@:overload @:protected private function write(ct : com.sun.xml.internal.bind.v2.schemagen.xmlschema.TypeDefParticle) : Void;
	
	/**
	* Convenience method to write occurrence constraints.
	*/
	@:overload @:protected @:final private function writeOccurs(o : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Occurs, isOptional : Bool, repeated : Bool) : Void;
	
	
}
/**
* Represents a terminal tree node, such as element, wildcard, etc.
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$Tree$Term') @:internal extern class Tree_Term extends com.sun.xml.internal.bind.v2.schemagen.Tree
{
	
}
/**
* "T?"
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$Tree$Optional') @:internal extern class Tree_Optional extends com.sun.xml.internal.bind.v2.schemagen.Tree
{
	@:overload @:protected override private function write(parent : com.sun.xml.internal.bind.v2.schemagen.xmlschema.ContentModelContainer, isOptional : Bool, repeated : Bool) : Void;
	
	
}
/**
* "T+"
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$Tree$Repeated') @:internal extern class Tree_Repeated extends com.sun.xml.internal.bind.v2.schemagen.Tree
{
	@:overload @:protected override private function write(parent : com.sun.xml.internal.bind.v2.schemagen.xmlschema.ContentModelContainer, isOptional : Bool, repeated : Bool) : Void;
	
	
}
/**
* "S|T", "S,T", and "S&amp;T".
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$Tree$Group') @:internal extern class Tree_Group extends com.sun.xml.internal.bind.v2.schemagen.Tree
{
	@:overload @:protected override private function write(parent : com.sun.xml.internal.bind.v2.schemagen.xmlschema.ContentModelContainer, isOptional : Bool, repeated : Bool) : Void;
	
	
}
