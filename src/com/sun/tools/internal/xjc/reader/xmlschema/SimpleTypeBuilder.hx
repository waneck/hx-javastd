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
extern class SimpleTypeBuilder extends com.sun.tools.internal.xjc.reader.xmlschema.BindingComponent
{
	/**
	* Builds {@link TypeUse} from simple types.
	*
	* <p>
	* This code consists of two main portions. The {@link #compose(XSSimpleType)} method
	* and {@link #composer} forms an outer cycle, which gradually ascends the type
	* inheritance chain until it finds the suitable binding. When it does this
	* {@link #initiatingType} is set to the type which started binding, so that we can refer
	* to the actual constraint facets and such that are applicable on the type.
	*
	* <p>
	* For each intermediate type in the chain, the {@link #find(XSSimpleType)} method
	* is used to find the binding on that type, sine the outer loop is doing the ascending,
	* this method only sees if the current type has some binding available.
	*
	* <p>
	* There is at least one ugly code that you need to aware of
	* when you are modifying the code. See the documentation
	* about <a href="package.html#stref_cust">
	* "simple type customization at the point of reference."</a>
	*
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:protected @:final private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	/**
	* The component that is refering to the simple type
	* which we are building. This is ugly but necessary
	* to support the customization of simple types at
	* its point of reference. See my comment at the header
	* of this class for details.
	*
	* UGLY: Implemented as a Stack of XSComponent to fix a bug
	*/
	@:public @:final public var refererStack(default, null) : java.util.Stack<com.sun.xml.internal.xsom.XSComponent>;
	
	/** {@link TypeUse}s for the built-in types. Read-only. */
	@:public @:static @:final public static var builtinConversions(default, null) : java.util.Map<String, com.sun.tools.internal.xjc.model.TypeUse>;
	
	/**
	* Entry point from outside. Builds a BGM type expression
	* from a simple type schema component.
	*
	* @param type
	*      the simple type to be bound.
	*/
	@:overload @:public public function build(type : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* A version of the {@link #build(XSSimpleType)} method
	* used to bind the definition of a class generated from
	* the given simple type.
	*/
	@:overload @:public public function buildDef(type : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function getReferer() : com.sun.xml.internal.xsom.XSComponent;
	
	@:public @:final public var composer(default, null) : com.sun.xml.internal.xsom.visitor.XSSimpleTypeFunction<com.sun.tools.internal.xjc.model.TypeUse>;
	
	/**
	* Returns true if the given simple type can be mapped to a
	* type-safe enum class.
	*
	* <p>
	* JAXB spec places a restrictrion as to what type can be
	* mapped to a type-safe enum. This method enforces this
	* constraint.
	*/
	@:overload @:public @:static public static function canBeMappedToTypeSafeEnum(type : com.sun.xml.internal.xsom.XSSimpleType) : Bool;
	
	@:overload @:public public function isAcknowledgedXmimeContentTypes(c : com.sun.xml.internal.xsom.XSComponent) : Bool;
	
	
}
