package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Represents a documentation tag, e.g. @since, @author, @version.
* Given a tag (e.g. "@since 1.2"), holds tag name (e.g. "@since")
* and tag text (e.g. "1.2").  TagImpls with structure or which require
* special processing are handled by subclasses (ParamTagImpl, SeeTagImpl,
* and ThrowsTagImpl
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Neal M Gafter
* @see SeeTagImpl
* @see ParamTagImpl
* @see ThrowsTagImpl
* @see Doc#tags()
*
*/
@:require(java2) @:internal extern class TagImpl implements com.sun.javadoc.Tag
{
	/**
	* Return the name of this tag.
	*/
	@:overload @:public public function name() : String;
	
	/**
	* Return the containing {@link Doc} of this Tag element.
	*/
	@:overload @:public public function holder() : com.sun.javadoc.Doc;
	
	/**
	* Return the kind of this tag.
	*/
	@:overload @:public public function kind() : String;
	
	/**
	* Return the text of this tag, that is, portion beyond tag name.
	*/
	@:overload @:public public function text() : String;
	
	/**
	* convert this object to a string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* For documentation comment with embedded @link tags, return the array of
	* TagImpls consisting of SeeTagImpl(s) and text containing TagImpl(s).
	* Within a comment string "This is an example of inline tags for a
	* documentation comment {@link Doc {@link Doc commentlabel}}",
	* where inside the inner braces, the first "Doc" carries exctly the same
	* syntax as a SeeTagImpl and the second "commentlabel" is label for the Html
	* Link, will return an array of TagImpl(s) with first element as TagImpl with
	* comment text "This is an example of inline tags for a documentation
	* comment" and second element as SeeTagImpl with referenced class as "Doc"
	* and the label for the Html Link as "commentlabel".
	*
	* @return TagImpl[] Array of tags with inline SeeTagImpls.
	* @see ParamTagImpl
	* @see ThrowsTagImpl
	*/
	@:overload @:public public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return array of tags for the first sentence in the doc comment text.
	*/
	@:overload @:public public function firstSentenceTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return the doc item to which this tag is attached.
	* @return the doc item to which this tag is attached.
	*/
	@:overload @:public public function position() : com.sun.javadoc.SourcePosition;
	
	
}
