package com.sun.mirror.util;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* A filter for selecting just the items of interest
* from a collection of declarations.
* The filter is said to <i>select</i> or to <i>match</i> those declarations.
* Filters can be created in several ways:
* by the static methods described below,
* by negating or composing existing filters,
* or by subclasses that implement arbitrary matching rules.
*
* <p> A subclass can create an arbitrary filter simply by implementing
* the {@link #matches(Declaration)} method.
*
* <p> Examples.
* <p> Selecting the <tt>public</tt> declarations from a collection:
* <blockquote><pre>
*     result = FILTER_PUBLIC.filter(decls);            </pre></blockquote>
* Selecting class declarations (including enums):
* <blockquote><pre>
*     classFilter = DeclarationFilter.getFilter(ClassDeclaration.class);
*     result = classFilter.filter(decls);              </pre></blockquote>
* Selecting class declarations but excluding enums:
* <blockquote><pre>
*     enumFilter = DeclarationFilter.getFilter(EnumDeclaration.class);
*     compoundFilter = classFilter.and(enumFilter.not());
*     result = compoundFilter.filter(decls);           </pre></blockquote>
* Selecting declarations named "Bob":
* <blockquote><pre>
*     nameFilter = new DeclarationFilter() {
*                      public boolean matches(Declaration d) {
*                          return d.getSimpleName().equals("Bob");
*                      }
*                  };
*     result = nameFilter.filter(decls);               </pre></blockquote>
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this class is {@link
* javax.lang.model.util.ElementFilter}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern class DeclarationFilter
{
	/**
	* A filter that selects only <tt>public</tt> declarations.
	*/
	public static var FILTER_PUBLIC(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* A filter that selects only <tt>protected</tt> declarations.
	*/
	public static var FILTER_PROTECTED(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* A filter that selects only <tt>public</tt> or <tt>protected</tt>
	* declarations.
	*/
	public static var FILTER_PUBLIC_OR_PROTECTED(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* A filter that selects only package-private (<i>default</i>)
	* declarations.
	*/
	public static var FILTER_PACKAGE(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* A filter that selects only <tt>private</tt> declarations.
	*/
	public static var FILTER_PRIVATE(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Constructs an identity filter:  one that selects all declarations.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns a filter that selects declarations containing all of a
	* collection of modifiers.
	*
	* @param mods  the modifiers to match (non-null)
	* @return a filter that matches declarations containing <tt>mods</tt>
	*/
	@:overload public static function getFilter(mods : java.util.Collection<com.sun.mirror.declaration.Modifier>) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Returns a filter that selects declarations of a particular kind.
	* For example, there may be a filter that selects only class
	* declarations, or only fields.
	* The filter will select declarations of the specified kind,
	* and also any subtypes of that kind; for example, a field filter
	* will also select enum constants.
	*
	* @param kind  the kind of declarations to select
	* @return a filter that selects declarations of a particular kind
	*/
	@:overload public static function getFilter(kind : Class<com.sun.mirror.declaration.Declaration>) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Returns a filter that selects those declarations selected
	* by both this filter and another.
	*
	* @param f  filter to be composed with this one
	* @return a filter that selects those declarations selected by
	*          both this filter and another
	*/
	@:overload public function and(f : com.sun.mirror.util.DeclarationFilter) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Returns a filter that selects those declarations selected
	* by either this filter or another.
	*
	* @param f  filter to be composed with this one
	* @return a filter that selects those declarations selected by
	*          either this filter or another
	*/
	@:overload public function or(f : com.sun.mirror.util.DeclarationFilter) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Returns a filter that selects those declarations not selected
	* by this filter.
	*
	* @return a filter that selects those declarations not selected
	* by this filter
	*/
	@:overload public function not() : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* Tests whether this filter matches a given declaration.
	* The default implementation always returns <tt>true</tt>;
	* subclasses should override this.
	*
	* @param decl  the declaration to match
	* @return <tt>true</tt> if this filter matches the given declaration
	*/
	@:overload public function matches(decl : com.sun.mirror.declaration.Declaration) : Bool;
	
	/**
	* Returns the declarations matched by this filter.
	* The result is a collection of the same type as the argument;
	* the {@linkplain #filter(Collection, Class) two-parameter version}
	* of <tt>filter</tt> offers control over the result type.
	*
	* @param <D>    type of the declarations being filtered
	* @param decls  declarations being filtered
	* @return the declarations matched by this filter
	*/
	@:overload public function filter<D : com.sun.mirror.declaration.Declaration>(decls : java.util.Collection<D>) : java.util.Collection<D>;
	
	/**
	* Returns the declarations matched by this filter, with the result
	* being restricted to declarations of a given kind.
	* Similar to the simpler
	* {@linkplain #filter(Collection) single-parameter version}
	* of <tt>filter</tt>, but the result type is specified explicitly.
	*
	* @param <D>      type of the declarations being returned
	* @param decls    declarations being filtered
	* @param resType  type of the declarations being returned --
	*                  the reflective view of <tt>D</tt>
	* @return the declarations matched by this filter, restricted to those
	*                  of the specified type
	*/
	@:overload public function filter<D : com.sun.mirror.declaration.Declaration>(decls : java.util.Collection<com.sun.mirror.declaration.Declaration>, resType : Class<D>) : java.util.Collection<D>;
	
	
}
/*
* A filter based on access modifiers.
*/
@:native('com$sun$mirror$util$DeclarationFilter$AccessFilter') @:internal extern class DeclarationFilter_AccessFilter extends com.sun.mirror.util.DeclarationFilter
{
	@:overload override public function matches(d : com.sun.mirror.declaration.Declaration) : Bool;
	
	
}
