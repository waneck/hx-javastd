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
* Represents an @param documentation tag.
* Parses and stores the name and comment parts of the parameter tag.
*
* @author Robert Field
*
*/
@:internal extern class ParamTagImpl extends com.sun.tools.javadoc.TagImpl implements com.sun.javadoc.ParamTag
{
	/**
	* Return the parameter name.
	*/
	@:overload @:public public function parameterName() : String;
	
	/**
	* Return the parameter comment.
	*/
	@:overload @:public public function parameterComment() : String;
	
	/**
	* Return the kind of this tag.
	*/
	@:overload @:public override public function kind() : String;
	
	/**
	* Return true if this ParamTag corresponds to a type parameter.
	*/
	@:overload @:public public function isTypeParameter() : Bool;
	
	/**
	* convert this object to a string.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* For the parameter comment with embedded @link tags return the array of
	* TagImpls consisting of SeeTagImpl(s) and text containing TagImpl(s).
	*
	* @return TagImpl[] Array of tags with inline SeeTagImpls.
	* @see TagImpl#inlineTagImpls()
	* @see ThrowsTagImpl#inlineTagImpls()
	*/
	@:overload @:public override public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	
}
