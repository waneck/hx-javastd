package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Search for the requested documentation.  Inherit documentation if necessary.
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class DocFinder
{
	/**
	* Search for the requested comments in the given method.  If it does not
	* have comments, return documentation from the overriden method if possible.
	* If the overriden method does not exist or does not have documentation to
	* inherit, search for documentation to inherit from implemented methods.
	*
	* @param input the input object used to perform the search.
	*
	* @return an Output object representing the documentation that was found.
	*/
	@:overload public static function search(input : com.sun.tools.doclets.internal.toolkit.util.DocFinder.DocFinder_Input) : com.sun.tools.doclets.internal.toolkit.util.DocFinder.DocFinder_Output;
	
	
}
/**
* The class that encapsulates the input.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$DocFinder$Input') extern class DocFinder_Input
{
	/**
	* The method to search documentation from.
	*/
	public var method : com.sun.javadoc.MethodDoc;
	
	/**
	* The taglet to search for documentation on behalf of. Null if we want
	* to search for overall documentation.
	*/
	public var taglet : com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet;
	
	/**
	* The id of the tag to retrieve documentation for.
	*/
	public var tagId : String;
	
	/**
	* The tag to retrieve documentation for.  This is only used for the
	* inheritDoc tag.
	*/
	public var tag : com.sun.javadoc.Tag;
	
	/**
	* True if we only want to search for the first sentence.
	*/
	public var isFirstSentence : Bool;
	
	/**
	* True if we are looking for documentation to replace the inheritDocTag.
	*/
	public var isInheritDocTag : Bool;
	
	/**
	* Used to distinguish between type variable param tags and regular
	* param tags.
	*/
	public var isTypeVariableParamTag : Bool;
	
	@:overload public function new() : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc, taglet : com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet, tag : com.sun.javadoc.Tag, isFirstSentence : Bool, isInheritDocTag : Bool) : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc, taglet : com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet, tagId : String) : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc, taglet : com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet, tagId : String, isTypeVariableParamTag : Bool) : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc, taglet : com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet) : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc) : Void;
	
	@:overload public function new(method : com.sun.javadoc.MethodDoc, isFirstSentence : Bool) : Void;
	
	@:overload public function copy() : com.sun.tools.doclets.internal.toolkit.util.DocFinder.DocFinder_Input;
	
	
}
/**
* The class that encapsulates the output.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$DocFinder$Output') extern class DocFinder_Output
{
	/**
	* The tag that holds the documentation.  Null if documentation
	* is not held by a tag.
	*/
	public var holderTag : com.sun.javadoc.Tag;
	
	/**
	* The Doc object that holds the documentation.
	*/
	public var holder : com.sun.javadoc.Doc;
	
	/**
	* The inherited documentation.
	*/
	public var inlineTags : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* False if documentation could not be inherited.
	*/
	public var isValidInheritDocTag : Bool;
	
	/**
	* When automatically inheriting throws tags, you sometime must inherit
	* more than one tag.  For example if the method declares that it throws
	* IOException and the overidden method has throws tags for IOException and
	* ZipException, both tags would be inherited because ZipException is a
	* subclass of IOException.  This subclass of DocFinder.Output allows
	* multiple tag inheritence.
	*/
	public var tagList : java.util.List<com.sun.javadoc.Tag>;
	
	
}
