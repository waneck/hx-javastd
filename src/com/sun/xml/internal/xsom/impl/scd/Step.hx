package com.sun.xml.internal.xsom.impl.scd;
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
extern class Step<T>
{
	/**
	* Building block of {@link SCD}.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public @:final public var axis(default, null) : com.sun.xml.internal.xsom.impl.scd.Axis<T>;
	
	@:overload @:protected private function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<T>) : Void;
	
	/**
	* Perform filtering (which is different depending on the kind of step.)
	*/
	@:overload @:protected @:abstract private function filter(base : java.util.Iterator<T>) : java.util.Iterator<T>;
	
	/**
	* Evaluate this step against the current node set
	* and returns matched nodes.
	*/
	@:overload @:public @:final public function evaluate(nodeSet : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>) : java.util.Iterator<T>;
	
	
}
/**
* Matches any name.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Step$Any') @:internal extern class Step_Any extends com.sun.xml.internal.xsom.impl.scd.Step<com.sun.xml.internal.xsom.XSComponent>
{
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSComponent>) : Void;
	
	@:overload @:protected override private function filter(base : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>) : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$scd$Step$Filtered') @:internal extern class Step_Filtered<T> extends com.sun.xml.internal.xsom.impl.scd.Step<T>
{
	@:overload @:protected private function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<T>) : Void;
	
	@:overload @:protected override private function filter(base : java.util.Iterator<T>) : java.util.Iterator<T>;
	
	@:overload @:protected @:abstract private function match(d : T) : Bool;
	
	
}
/**
* Matches a particular name.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Step$Named') @:internal extern class Step_Named extends com.sun.xml.internal.xsom.impl.scd.Step.Step_Filtered<com.sun.xml.internal.xsom.XSDeclaration>
{
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSDeclaration>, n : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSDeclaration>, nsUri : String, localName : String) : Void;
	
	@:overload @:protected private function match(d : com.sun.xml.internal.xsom.XSDeclaration) : Bool;
	
	
}
/**
* Matches anonymous types.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Step$AnonymousType') @:internal extern class Step_AnonymousType extends com.sun.xml.internal.xsom.impl.scd.Step.Step_Filtered<com.sun.xml.internal.xsom.XSType>
{
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSType>) : Void;
	
	@:overload @:protected private function match(node : com.sun.xml.internal.xsom.XSType) : Bool;
	
	
}
/**
* Matches a particular kind of facets.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Step$Facet') @:internal extern class Step_Facet extends com.sun.xml.internal.xsom.impl.scd.Step.Step_Filtered<com.sun.xml.internal.xsom.XSFacet>
{
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSFacet>, facetName : String) : Void;
	
	@:overload @:protected private function match(f : com.sun.xml.internal.xsom.XSFacet) : Bool;
	
	
}
/**
* Matches a schema in a particular namespace.
*/
@:native('com$sun$xml$internal$xsom$impl$scd$Step$Schema') @:internal extern class Step_Schema extends com.sun.xml.internal.xsom.impl.scd.Step.Step_Filtered<com.sun.xml.internal.xsom.XSSchema>
{
	@:overload @:public public function new(axis : com.sun.xml.internal.xsom.impl.scd.Axis<com.sun.xml.internal.xsom.XSSchema>, uri : String) : Void;
	
	@:overload @:protected private function match(d : com.sun.xml.internal.xsom.XSSchema) : Bool;
	
	
}
