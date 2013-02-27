package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Manages the<code>Taglet</code>s used by doclets.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class TagletManager
{
	/**
	* The default seperator for the simple tag option.
	*/
	public static var SIMPLE_TAGLET_OPT_SEPERATOR(default, null) : java.StdTypes.Char16;
	
	/**
	* The alternate seperator for simple tag options.  Use this
	* with you want the default seperator to be in the name of the
	* custom tag.
	*/
	public static var ALT_SIMPLE_TAGLET_OPT_SEPERATOR(default, null) : String;
	
	/**
	* Construct a new <code>TagletManager</code>.
	* @param nosince true if we do not want to use @since tags.
	* @param showversion true if we want to use @version tags.
	* @param showauthor true if we want to use @author tags.
	* @param message the message retriever to print warnings.
	*/
	@:overload public function new(nosince : Bool, showversion : Bool, showauthor : Bool, message : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever) : Void;
	
	/**
	* Add a new <code>CustomTag</code>.  This is used to add a Taglet from within
	* a Doclet.  No message is printed to indicate that the Taglet is properly
	* registered because these Taglets are typically added for every execution of the
	* Doclet.  We don't want to see this type of error message every time.
	* @param customTag the new <code>CustomTag</code> to add.
	*/
	@:overload public function addCustomTag(customTag : com.sun.tools.doclets.internal.toolkit.taglets.Taglet) : Void;
	
	/**
	* Add a new <code>Taglet</code>.  Print a message to indicate whether or not
	* the Taglet was registered properly.
	* @param classname  the name of the class representing the custom tag.
	* @param tagletPath  the path to the class representing the custom tag.
	*/
	@:overload public function addCustomTag(classname : String, tagletPath : String) : Void;
	
	/**
	* Add a new <code>SimpleTaglet</code>.  If this tag already exists
	* and the header passed as an argument is null, move tag to the back of the
	* list. If this tag already exists and the header passed as an argument is
	* not null, overwrite previous tag with new one.  Otherwise, add new
	* SimpleTaglet to list.
	* @param tagName the name of this tag
	* @param header the header to output.
	* @param locations the possible locations that this tag
	* can appear in.
	*/
	@:overload public function addNewSimpleCustomTag(tagName : String, header : String, locations : String) : Void;
	
	/**
	* Given a name of a seen custom tag, remove it from the set of unseen
	* custom tags.
	* @param name the name of the seen custom tag.
	*/
	@:overload public function seenCustomTag(name : String) : Void;
	
	/**
	* Given an array of <code>Tag</code>s, check for spelling mistakes.
	* @param doc the Doc object that holds the tags.
	* @param tags the list of <code>Tag</code>s to check.
	* @param areInlineTags true if the array of tags are inline and false otherwise.
	*/
	@:overload public function checkTags(doc : com.sun.javadoc.Doc, tags : java.NativeArray<com.sun.javadoc.Tag>, areInlineTags : Bool) : Void;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in packages.
	* @return the array of <code>Taglet</code>s that can
	* appear in packages.
	*/
	@:overload public function getPackageCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in classes or interfaces.
	* @return the array of <code>Taglet</code>s that can
	* appear in classes or interfaces.
	*/
	@:overload public function getTypeCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of inline <code>Taglet</code>s that can
	* appear in comments.
	* @return the array of <code>Taglet</code>s that can
	* appear in comments.
	*/
	@:overload public function getInlineCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in fields.
	* @return the array of <code>Taglet</code>s that can
	* appear in field.
	*/
	@:overload public function getFieldCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in the serialized form.
	* @return the array of <code>Taglet</code>s that can
	* appear in the serialized form.
	*/
	@:overload public function getSerializedFormTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* @return the array of <code>Taglet</code>s that can
	* appear in the given Doc.
	*/
	@:overload public function getCustomTags(doc : com.sun.javadoc.Doc) : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in constructors.
	* @return the array of <code>Taglet</code>s that can
	* appear in constructors.
	*/
	@:overload public function getConstructorCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in methods.
	* @return the array of <code>Taglet</code>s that can
	* appear in methods.
	*/
	@:overload public function getMethodCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	/**
	* Return the array of <code>Taglet</code>s that can
	* appear in an overview.
	* @return the array of <code>Taglet</code>s that can
	* appear in overview.
	*/
	@:overload public function getOverviewCustomTags() : java.NativeArray<com.sun.tools.doclets.internal.toolkit.taglets.Taglet>;
	
	@:overload public function isKnownCustomTag(tagName : String) : Bool;
	
	/**
	* Print a list of {@link Taglet}s that might conflict with
	* standard tags in the future and a list of standard tags
	* that have been overriden.
	*/
	@:overload public function printReport() : Void;
	
	/**
	* Given the name of a tag, return the corresponding taglet.
	* Return null if the tag is unknown.
	*
	* @param name the name of the taglet to retrieve.
	* @return return the corresponding taglet. Return null if the tag is
	*         unknown.
	*/
	@:overload public function getTaglet(name : String) : com.sun.tools.doclets.internal.toolkit.taglets.Taglet;
	
	
}
