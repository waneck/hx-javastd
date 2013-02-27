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
* Represents a @throws or @exception documentation tag.
* Parses and holds the exception name and exception comment.
* The exception name my be the name of a type variable.
* Note: @exception is a backwards compatible synonymy for @throws.
*
* @author Robert Field
* @author Atul M Dambalkar
* @see ExecutableMemberDocImpl#throwsTags()
*
*/
@:internal extern class ThrowsTagImpl extends com.sun.tools.javadoc.TagImpl implements com.sun.javadoc.ThrowsTag
{
	/**
	* Return the exception name.
	*/
	@:overload public function exceptionName() : String;
	
	/**
	* Return the exception comment.
	*/
	@:overload public function exceptionComment() : String;
	
	/**
	* Return the exception as a ClassDocImpl.
	*/
	@:overload public function exception() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return the type that represents the exception.
	* This may be a <code>ClassDoc</code> or a <code>TypeVariable</code>.
	*/
	@:overload public function exceptionType() : com.sun.javadoc.Type;
	
	/**
	* Return the kind of this tag.  Always "@throws" for instances
	* of ThrowsTagImpl.
	*/
	@:overload override public function kind() : String;
	
	/**
	* For the exception comment with embedded @link tags return the array of
	* TagImpls consisting of SeeTagImpl(s) and text containing TagImpl(s).
	*
	* @return TagImpl[] Array of tags with inline SeeTagImpls.
	* @see TagImpl#inlineTagImpls()
	* @see ParamTagImpl#inlineTagImpls()
	*/
	@:overload override public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	
}
