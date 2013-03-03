package javax.lang.model.util;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Filters for selecting just the elements of interest from a
* collection of elements.  The returned sets and lists are new
* collections and do use the argument as a backing store.  The
* methods in this class do not make any attempts to guard against
* concurrent modifications of the arguments.  The returned sets and
* lists are mutable but unsafe for concurrent access.  A returned set
* has the same iteration order as the argument set to a method.
*
* <p>If iterables and sets containing {@code null} are passed as
* arguments to methods in this class, a {@code NullPointerException}
* will be thrown.
*
* <p>Note that a <i>static import</i> statement can make the text of
* calls to the methods in this class more concise; for example:
*
* <blockquote><pre>
*     import static javax.lang.model.util.ElementFilter.*;
*     ...
*         {@code List<VariableElement>} fs = fieldsIn(someClass.getEnclosedElements());
* </pre></blockquote>
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @author Peter von der Ah&eacute;
* @author Martin Buchholz
* @since 1.6
*/
@:require(java6) extern class ElementFilter
{
	/**
	* Returns a list of fields in {@code elements}.
	* @return a list of fields in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function fieldsIn(elements : java.lang.Iterable<javax.lang.model.element.Element>) : java.util.List<javax.lang.model.element.VariableElement>;
	
	/**
	* Returns a set of fields in {@code elements}.
	* @return a set of fields in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function fieldsIn(elements : java.util.Set<javax.lang.model.element.Element>) : java.util.Set<javax.lang.model.element.VariableElement>;
	
	/**
	* Returns a list of constructors in {@code elements}.
	* @return a list of constructors in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function constructorsIn(elements : java.lang.Iterable<javax.lang.model.element.Element>) : java.util.List<javax.lang.model.element.ExecutableElement>;
	
	/**
	* Returns a set of constructors in {@code elements}.
	* @return a set of constructors in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function constructorsIn(elements : java.util.Set<javax.lang.model.element.Element>) : java.util.Set<javax.lang.model.element.ExecutableElement>;
	
	/**
	* Returns a list of methods in {@code elements}.
	* @return a list of methods in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function methodsIn(elements : java.lang.Iterable<javax.lang.model.element.Element>) : java.util.List<javax.lang.model.element.ExecutableElement>;
	
	/**
	* Returns a set of methods in {@code elements}.
	* @return a set of methods in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function methodsIn(elements : java.util.Set<javax.lang.model.element.Element>) : java.util.Set<javax.lang.model.element.ExecutableElement>;
	
	/**
	* Returns a list of types in {@code elements}.
	* @return a list of types in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function typesIn(elements : java.lang.Iterable<javax.lang.model.element.Element>) : java.util.List<javax.lang.model.element.TypeElement>;
	
	/**
	* Returns a set of types in {@code elements}.
	* @return a set of types in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function typesIn(elements : java.util.Set<javax.lang.model.element.Element>) : java.util.Set<javax.lang.model.element.TypeElement>;
	
	/**
	* Returns a list of packages in {@code elements}.
	* @return a list of packages in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function packagesIn(elements : java.lang.Iterable<javax.lang.model.element.Element>) : java.util.List<javax.lang.model.element.PackageElement>;
	
	/**
	* Returns a set of packages in {@code elements}.
	* @return a set of packages in {@code elements}
	* @param elements the elements to filter
	*/
	@:overload @:public @:static public static function packagesIn(elements : java.util.Set<javax.lang.model.element.Element>) : java.util.Set<javax.lang.model.element.PackageElement>;
	
	
}
