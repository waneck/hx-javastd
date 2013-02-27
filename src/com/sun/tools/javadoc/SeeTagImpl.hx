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
/**
* Represents a see also documentation tag.
* The @see tag can be plain text, or reference a class or member.
*
* @author Kaiyang Liu (original)
* @author Robert Field (rewrite)
* @author Atul M Dambalkar
*
*/
@:internal extern class SeeTagImpl extends com.sun.tools.javadoc.TagImpl implements com.sun.javadoc.SeeTag implements com.sun.tools.javac.util.LayoutCharacters
{
	/**
	* get the class name part of @see, For instance,
	* if the comment is @see String#startsWith(java.lang.String) .
	*      This function returns String.
	* Returns null if format was not that of java reference.
	* Return empty string if class name was not specified..
	*/
	@:overload public function referencedClassName() : String;
	
	/**
	* get the package referenced by  @see. For instance,
	* if the comment is @see java.lang
	*      This function returns a PackageDocImpl for java.lang
	* Returns null if no known package found.
	*/
	@:overload public function referencedPackage() : com.sun.javadoc.PackageDoc;
	
	/**
	* get the class referenced by the class name part of @see, For instance,
	* if the comment is @see String#startsWith(java.lang.String) .
	*      This function returns a ClassDocImpl for java.lang.String.
	* Returns null if class is not a class specified on the javadoc command line..
	*/
	@:overload public function referencedClass() : com.sun.javadoc.ClassDoc;
	
	/**
	* get the name of the member referenced by the prototype part of @see,
	* For instance,
	* if the comment is @see String#startsWith(java.lang.String) .
	*      This function returns "startsWith(java.lang.String)"
	* Returns null if format was not that of java reference.
	* Return empty string if member name was not specified..
	*/
	@:overload public function referencedMemberName() : String;
	
	/**
	* get the member referenced by the prototype part of @see,
	* For instance,
	* if the comment is @see String#startsWith(java.lang.String) .
	*      This function returns a MethodDocImpl for startsWith.
	* Returns null if member could not be determined.
	*/
	@:overload public function referencedMember() : com.sun.javadoc.MemberDoc;
	
	/**
	* Return the kind of this tag.
	*/
	@:overload override public function kind() : String;
	
	/**
	* Return the label of the see tag.
	*/
	@:overload public function label() : String;
	
	
}
@:native('com$sun$tools$javadoc$SeeTagImpl$ParameterParseMachine') @:internal extern class SeeTagImpl_ParameterParseMachine
{
	@:overload public function parseParameters() : java.NativeArray<String>;
	
	
}
