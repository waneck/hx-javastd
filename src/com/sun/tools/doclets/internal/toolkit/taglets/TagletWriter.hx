package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* The interface for the taglet writer.
*
* @since 1.5
* @author Jamie Ho
*/
@:require(java5) extern class TagletWriter
{
	/**
	* True if we only want to write the first sentence.
	*/
	@:protected private var isFirstSentence : Bool;
	
	/**
	* @return an instance of the output object.
	*/
	@:overload @:public @:abstract public function getOutputInstance() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Returns the output for the DocRoot inline tag.
	* @return the output for the DocRoot inline tag.
	*/
	@:overload @:protected @:abstract private function getDocRootOutput() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the deprecated tag output.
	*
	* @param doc the doc to write deprecated documentation for.
	* @return the output of the deprecated tag.
	*/
	@:overload @:protected @:abstract private function deprecatedTagOutput(doc : com.sun.javadoc.Doc) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Returns {@link MessageRetriever} for output purposes.
	*
	* @return {@link MessageRetriever} for output purposes.
	*/
	@:overload @:protected @:abstract private function getMsgRetriever() : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* Return the header for the param tags.
	*
	* @param header the header to display.
	* @return the header for the param tags.
	*/
	@:overload @:protected @:abstract private function getParamHeader(header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the output for param tags.
	*
	* @param paramTag the parameter to document.
	* @param paramName the name of the parameter.
	* @return the output of the param tag.
	*/
	@:overload @:protected @:abstract private function paramTagOutput(paramTag : com.sun.javadoc.ParamTag, paramName : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the return tag output.
	*
	* @param returnTag the return tag to output.
	* @return the output of the return tag.
	*/
	@:overload @:protected @:abstract private function returnTagOutput(returnTag : com.sun.javadoc.Tag) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the see tag output.
	*
	* @param seeTags the array of See tags.
	* @return the output of the see tags.
	*/
	@:overload @:protected @:abstract private function seeTagOutput(holder : com.sun.javadoc.Doc, seeTags : java.NativeArray<com.sun.javadoc.SeeTag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the output for a simple tag.
	*
	* @param simpleTags the array of simple tags.
	* @return the output of the simple tags.
	*/
	@:overload @:protected @:abstract private function simpleTagOutput(simpleTags : java.NativeArray<com.sun.javadoc.Tag>, header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the output for a simple tag.
	*
	* @param simpleTag the simple tag.
	* @return the output of the simple tag.
	*/
	@:overload @:protected @:abstract private function simpleTagOutput(simpleTag : com.sun.javadoc.Tag, header : String) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the header for the throws tag.
	*
	* @return the header for the throws tag.
	*/
	@:overload @:protected @:abstract private function getThrowsHeader() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the header for the throws tag.
	*
	* @param throwsTag the throws tag.
	* @return the output of the throws tag.
	*/
	@:overload @:protected @:abstract private function throwsTagOutput(throwsTag : com.sun.javadoc.ThrowsTag) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the output for the throws tag.
	*
	* @param throwsType the throws type.
	* @return the output of the throws type.
	*/
	@:overload @:protected @:abstract private function throwsTagOutput(throwsType : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Return the output for the value tag.
	*
	* @param field       the constant field that holds the value tag.
	* @param constantVal the constant value to document.
	* @param includeLink true if we should link the constant text to the
	*                    constant field itself.
	* @return the output of the value tag.
	*/
	@:overload @:protected @:abstract private function valueTagOutput(field : com.sun.javadoc.FieldDoc, constantVal : String, includeLink : Bool) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Given an output object, append to it the tag documentation for
	* the given member.
	*
	* @param tagletManager the manager that manages the taglets.
	* @param doc the Doc that we are print tags for.
	* @param taglets the taglets to print.
	* @param writer the writer that will generate the output strings.
	* @param output the output buffer to store the output in.
	*/
	@:overload @:public @:static public static function genTagOuput(tagletManager : com.sun.tools.doclets.internal.toolkit.taglets.TagletManager, doc : com.sun.javadoc.Doc, taglets : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter, output : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput) : Void;
	
	/**
	* Given an inline tag, return its output.
	* @param tagletManager The taglet manager for the current doclet.
	* @param holderTag The tag this holds this inline tag.  Null if there
	* is no tag that holds it.
	* @param inlineTag The inline tag to be documented.
	* @param tagletWriter The taglet writer to write the output.
	* @return The output of the inline tag.
	*/
	@:overload @:public @:static public static function getInlineTagOuput(tagletManager : com.sun.tools.doclets.internal.toolkit.taglets.TagletManager, holderTag : com.sun.javadoc.Tag, inlineTag : com.sun.javadoc.Tag, tagletWriter : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Converts inline tags and text to TagOutput, expanding the
	* inline tags along the way.  Called wherever text can contain
	* an inline tag, such as in comments or in free-form text arguments
	* to non-inline tags.
	*
	* @param holderTag the tag that holds the documentation.
	* @param tags   array of text tags and inline tags (often alternating)
	*               present in the text of interest for this doc.
	* @return the {@link TagletOutput} representing the comments.
	*/
	@:overload @:public @:abstract public function commentTagsToOutput(holderTag : com.sun.javadoc.Tag, tags : java.NativeArray<com.sun.javadoc.Tag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Converts inline tags and text to TagOutput, expanding the
	* inline tags along the way.  Called wherever text can contain
	* an inline tag, such as in comments or in free-form text arguments
	* to non-inline tags.
	*
	* @param holderDoc specific doc where comment resides.
	* @param tags   array of text tags and inline tags (often alternating)
	*               present in the text of interest for this doc.
	* @return the {@link TagletOutput} representing the comments.
	*/
	@:overload @:public @:abstract public function commentTagsToOutput(holderDoc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Converts inline tags and text to TagOutput, expanding the
	* inline tags along the way.  Called wherever text can contain
	* an inline tag, such as in comments or in free-form text arguments
	* to non-inline tags.
	*
	* @param holderTag the tag that holds the documentation.
	* @param holderDoc specific doc where comment resides.
	* @param tags   array of text tags and inline tags (often alternating)
	*               present in the text of interest for this doc.
	* @param isFirstSentence true if this is the first sentence.
	* @return the {@link TagletOutput} representing the comments.
	*/
	@:overload @:public @:abstract public function commentTagsToOutput(holderTag : com.sun.javadoc.Tag, holderDoc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>, isFirstSentence : Bool) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* @return an instance of the configuration used for this doclet.
	*/
	@:overload @:public @:abstract public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* @return an instance of the taglet output object.
	*/
	@:overload @:public @:abstract public function getTagletOutputInstance() : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
