package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The taglet writer that writes HTML.
*
* @since 1.5
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
*/
@:require(java5) extern class TagletWriterImpl extends com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter
{
	@:overload public function new(htmlWriter : com.sun.tools.doclets.formats.html.HtmlDocletWriter, isFirstSentence : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getOutputInstance() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getDocRootOutput() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function deprecatedTagOutput(doc : com.sun.javadoc.Doc) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getMsgRetriever() : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getParamHeader(header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function paramTagOutput(paramTag : com.sun.javadoc.ParamTag, paramName : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function returnTagOutput(returnTag : com.sun.javadoc.Tag) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function seeTagOutput(holder : com.sun.javadoc.Doc, seeTags : java.NativeArray<com.sun.javadoc.SeeTag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function simpleTagOutput(simpleTags : java.NativeArray<com.sun.javadoc.Tag>, header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function simpleTagOutput(simpleTag : com.sun.javadoc.Tag, header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getThrowsHeader() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function throwsTagOutput(throwsTag : com.sun.javadoc.ThrowsTag) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function throwsTagOutput(throwsType : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function valueTagOutput(field : com.sun.javadoc.FieldDoc, constantVal : String, includeLink : Bool) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function commentTagsToOutput(holderTag : com.sun.javadoc.Tag, tags : java.NativeArray<com.sun.javadoc.Tag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function commentTagsToOutput(holderDoc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function commentTagsToOutput(holderTag : com.sun.javadoc.Tag, holderDoc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>, isFirstSentence : Bool) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* Return an instance of a TagletWriter that knows how to write HTML.
	*
	* @return an instance of a TagletWriter that knows how to write HTML.
	*/
	@:overload override public function getTagletOutputInstance() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
