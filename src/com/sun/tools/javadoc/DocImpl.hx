package com.sun.tools.javadoc;
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
extern class DocImpl implements com.sun.javadoc.Doc implements java.lang.Comparable<Dynamic>
{
	/**
	* Doc environment
	*/
	private var env(default, null) : com.sun.tools.javadoc.DocEnv;
	
	/**
	* So subclasses have the option to do lazy initialization of
	* "documentation" string.
	*/
	@:overload private function documentation() : String;
	
	/**
	* Return the text of the comment for this doc item.
	* TagImpls have been removed.
	*/
	@:overload public function commentText() : String;
	
	/**
	* Return all tags in this Doc item.
	*
	* @return an array of TagImpl containing all tags on this Doc item.
	*/
	@:overload public function tags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return tags of the specified kind in this Doc item.
	*
	* @param tagname name of the tag kind to search for.
	* @return an array of TagImpl containing all tags whose 'kind()'
	* matches 'tagname'.
	*/
	@:overload public function tags(tagname : String) : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return the see also tags in this Doc item.
	*
	* @return an array of SeeTag containing all &#64see tags.
	*/
	@:overload public function seeTags() : java.NativeArray<com.sun.javadoc.SeeTag>;
	
	@:overload public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	@:overload public function firstSentenceTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return the full unprocessed text of the comment.  Tags
	* are included as text.  Used mainly for store and retrieve
	* operations like internalization.
	*/
	@:overload public function getRawCommentText() : String;
	
	/**
	* Set the full unprocessed text of the comment.  Tags
	* are included as text.  Used mainly for store and retrieve
	* operations like internalization.
	*/
	@:overload public function setRawCommentText(rawDocumentation : String) : Void;
	
	/**
	* Returns a string representation of this Doc item.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the name of this Doc item.
	*
	* @return  the name
	*/
	@:overload @:abstract public function name() : String;
	
	/**
	* Returns the qualified name of this Doc item.
	*
	* @return  the name
	*/
	@:overload @:abstract public function qualifiedName() : String;
	
	/**
	* Compares this Object with the specified Object for order.  Returns a
	* negative integer, zero, or a positive integer as this Object is less
	* than, equal to, or greater than the given Object.
	* <p>
	* Included so that Doc item are java.lang.Comparable.
	*
	* @param   o the <code>Object</code> to be compared.
	* @return  a negative integer, zero, or a positive integer as this Object
	*          is less than, equal to, or greater than the given Object.
	* @exception ClassCastException the specified Object's type prevents it
	*            from being compared to this Object.
	*/
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Is this Doc item a field?  False until overridden.
	*
	* @return true if it represents a field
	*/
	@:overload public function isField() : Bool;
	
	/**
	* Is this Doc item an enum constant?  False until overridden.
	*
	* @return true if it represents an enum constant
	*/
	@:overload public function isEnumConstant() : Bool;
	
	/**
	* Is this Doc item a constructor?  False until overridden.
	*
	* @return true if it represents a constructor
	*/
	@:overload public function isConstructor() : Bool;
	
	/**
	* Is this Doc item a method (but not a constructor or annotation
	* type element)?
	* False until overridden.
	*
	* @return true if it represents a method
	*/
	@:overload public function isMethod() : Bool;
	
	/**
	* Is this Doc item an annotation type element?
	* False until overridden.
	*
	* @return true if it represents an annotation type element
	*/
	@:overload public function isAnnotationTypeElement() : Bool;
	
	/**
	* Is this Doc item a interface (but not an annotation type)?
	* False until overridden.
	*
	* @return true if it represents a interface
	*/
	@:overload public function isInterface() : Bool;
	
	/**
	* Is this Doc item a exception class?  False until overridden.
	*
	* @return true if it represents a exception
	*/
	@:overload public function isException() : Bool;
	
	/**
	* Is this Doc item a error class?  False until overridden.
	*
	* @return true if it represents a error
	*/
	@:overload public function isError() : Bool;
	
	/**
	* Is this Doc item an enum type?  False until overridden.
	*
	* @return true if it represents an enum type
	*/
	@:overload public function isEnum() : Bool;
	
	/**
	* Is this Doc item an annotation type?  False until overridden.
	*
	* @return true if it represents an annotation type
	*/
	@:overload public function isAnnotationType() : Bool;
	
	/**
	* Is this Doc item an ordinary class (i.e. not an interface,
	* annotation type, enumeration, exception, or error)?
	* False until overridden.
	*
	* @return true if it represents an ordinary class
	*/
	@:overload public function isOrdinaryClass() : Bool;
	
	/**
	* Is this Doc item a class
	* (and not an interface or annotation type)?
	* This includes ordinary classes, enums, errors and exceptions.
	* False until overridden.
	*
	* @return true if it represents a class
	*/
	@:overload public function isClass() : Bool;
	
	/**
	* return true if this Doc is include in the active set.
	*/
	@:overload @:abstract public function isIncluded() : Bool;
	
	/**
	* Return the source position of the entity, or null if
	* no position is available.
	*/
	@:overload public function position() : com.sun.javadoc.SourcePosition;
	
	
}
