package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2002 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
/**
* ContentSpec really exists to aid the parser classes in implementing
* access to the grammar.
* <p>
* This class is used by the DTD scanner and the validator classes,
* allowing them to be used separately or together.  This "struct"
* class is used to build content models for validation, where it
* is more efficient to fetch all of the information for each of
* these content model "fragments" than to fetch each field one at
* a time.  Since configurations are allowed to have validators
* without a DTD scanner (i.e. a schema validator) and a DTD scanner
* without a validator (non-validating processor), this class can be
* used by each without requiring the presence of the other.
* <p>
* When processing element declarations, the DTD scanner will build
* up a representation of the content model using the node types that
* are defined here.  Since a non-validating processor only needs to
* remember the type of content model declared (i.e. ANY, EMPTY, MIXED,
* or CHILDREN), it is free to discard the specific details of the
* MIXED and CHILDREN content models described using this class.
* <p>
* In the typical case of a validating processor reading the grammar
* of the document from a DTD, the information about the content model
* declared will be preserved and later "compiled" into an efficient
* form for use during element validation.  Each content spec node
* that is saved is assigned a unique index that is used as a handle
* for the "value" or "otherValue" fields of other content spec nodes.
* A leaf node has a "value" that is either an index in the string
* pool of the element type of that leaf, or a value of -1 to indicate
* the special "#PCDATA" leaf type used in a mixed content model.
* <p>
* For a mixed content model, the content spec will be made up of
* leaf and choice content spec nodes, with an optional "zero or more"
* node.  For example, the mixed content declaration "(#PCDATA)" would
* contain a single leaf node with a node value of -1.  A mixed content
* declaration of "(#PCDATA|foo)*" would have a content spec consisting
* of two leaf nodes, for the "#PCDATA" and "foo" choices, a choice node
* with the "value" set to the index of the "#PCDATA" leaf node and the
* "otherValue" set to the index of the "foo" leaf node, and a "zero or
* more" node with the "value" set to the index of the choice node.  If
* the content model has more choices, for example "(#PCDATA|a|b)*", then
* there will be more corresponding choice and leaf nodes, the choice
* nodes will be chained together through the "value" field with each
* leaf node referenced by the "otherValue" field.
* <p>
* For element content models, there are sequence nodes and also "zero or
* one" and "one or more" nodes.  The leaf nodes would always have a valid
* string pool index, as the "#PCDATA" leaf is not used in the declarations
* for element content models.
*
* @xerces.internal
*
*/
extern class XMLContentSpec
{
	/**
	* Name or #PCDATA. Leaf nodes that represent parsed character
	* data (#PCDATA) have values of -1.
	*/
	public static var CONTENTSPECNODE_LEAF(default, null) : java.StdTypes.Int16;
	
	/** Represents a zero or one occurence count, '?'. */
	public static var CONTENTSPECNODE_ZERO_OR_ONE(default, null) : java.StdTypes.Int16;
	
	/** Represents a zero or more occurence count, '*'. */
	public static var CONTENTSPECNODE_ZERO_OR_MORE(default, null) : java.StdTypes.Int16;
	
	/** Represents a one or more occurence count, '+'. */
	public static var CONTENTSPECNODE_ONE_OR_MORE(default, null) : java.StdTypes.Int16;
	
	/** Represents choice, '|'. */
	public static var CONTENTSPECNODE_CHOICE(default, null) : java.StdTypes.Int16;
	
	/** Represents sequence, ','. */
	public static var CONTENTSPECNODE_SEQ(default, null) : java.StdTypes.Int16;
	
	/**
	* Represents any namespace specified namespace. When the element
	* found in the document must belong to a specific namespace,
	* <code>otherValue</code> will contain the name of the namespace.
	* If <code>otherValue</code> is <code>-1</code> then the element
	* can be from any namespace.
	* <p>
	* Lists of valid namespaces are created from choice content spec
	* nodes that have any content spec nodes as children.
	*/
	public static var CONTENTSPECNODE_ANY(default, null) : java.StdTypes.Int16;
	
	/**
	* Represents any other namespace (XML Schema: ##other).
	* <p>
	* When the content spec node type is set to CONTENTSPECNODE_ANY_OTHER,
	* <code>value</code> will contain the namespace that <em>cannot</em>
	* occur.
	*/
	public static var CONTENTSPECNODE_ANY_OTHER(default, null) : java.StdTypes.Int16;
	
	/** Represents any local element (XML Schema: ##local). */
	public static var CONTENTSPECNODE_ANY_LOCAL(default, null) : java.StdTypes.Int16;
	
	/** prcessContent is 'lax' **/
	public static var CONTENTSPECNODE_ANY_LAX(default, null) : java.StdTypes.Int16;
	
	public static var CONTENTSPECNODE_ANY_OTHER_LAX(default, null) : java.StdTypes.Int16;
	
	public static var CONTENTSPECNODE_ANY_LOCAL_LAX(default, null) : java.StdTypes.Int16;
	
	/** processContent is 'skip' **/
	public static var CONTENTSPECNODE_ANY_SKIP(default, null) : java.StdTypes.Int16;
	
	public static var CONTENTSPECNODE_ANY_OTHER_SKIP(default, null) : java.StdTypes.Int16;
	
	public static var CONTENTSPECNODE_ANY_LOCAL_SKIP(default, null) : java.StdTypes.Int16;
	
	/**
	* The content spec node type.
	*
	* @see #CONTENTSPECNODE_LEAF
	* @see #CONTENTSPECNODE_ZERO_OR_ONE
	* @see #CONTENTSPECNODE_ZERO_OR_MORE
	* @see #CONTENTSPECNODE_ONE_OR_MORE
	* @see #CONTENTSPECNODE_CHOICE
	* @see #CONTENTSPECNODE_SEQ
	*/
	public var type : java.StdTypes.Int16;
	
	/**
	* The "left hand" value object of the content spec node.
	* leaf name.localpart, single child for unary ops, left child for binary ops.
	*/
	public var value : Dynamic;
	
	/**
	* The "right hand" value of the content spec node.
	*  leaf name.uri, right child for binary ops
	*/
	public var otherValue : Dynamic;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Constructs a content spec with the specified values. */
	@:overload public function new(type : java.StdTypes.Int16, value : Dynamic, otherValue : Dynamic) : Void;
	
	/**
	* Constructs a content spec from the values in the specified content spec.
	*/
	@:overload public function new(contentSpec : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec) : Void;
	
	/**
	* Constructs a content spec from the values specified by the given
	* content spec provider and identifier.
	*/
	@:overload public function new(provider : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec.XMLContentSpec_Provider, contentSpecIndex : Int) : Void;
	
	/** Clears the values. */
	@:overload public function clear() : Void;
	
	/** Sets the values. */
	@:overload public function setValues(type : java.StdTypes.Int16, value : Dynamic, otherValue : Dynamic) : Void;
	
	/** Sets the values of the specified content spec. */
	@:overload public function setValues(contentSpec : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec) : Void;
	
	/**
	* Sets the values from the values specified by the given content spec
	* provider and identifier. If the specified content spec cannot be
	* provided, the values of this content spec are cleared.
	*/
	@:overload public function setValues(provider : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec.XMLContentSpec_Provider, contentSpecIndex : Int) : Void;
	
	/** Returns a hash code for this node. */
	@:overload public function hashCode() : Int;
	
	/** Returns true if the two objects are equal. */
	@:overload public function equals(object : Dynamic) : Bool;
	
	
}
/**
* Provides a means for walking the structure built out of
* content spec "nodes". The user of this provider interface is
* responsible for knowing what the content spec node values
* "mean". If those values refer to content spec identifiers,
* then the user can call back into the provider to get the
* next content spec node in the structure.
*
* @xerces.internal
*/
@:native('com$sun$org$apache$xerces$internal$impl$dtd$XMLContentSpec$Provider') extern interface XMLContentSpec_Provider
{
	/**
	* Fills in the provided content spec structure with content spec
	* information for a unique identifier.
	*
	* @param contentSpecIndex The content spec identifier. All content
	*                         spec "nodes" have a unique identifier.
	* @param contentSpec      The content spec struct to fill in with
	*                         the information.
	*
	* @return Returns true if the contentSpecIndex was found.
	*/
	@:overload public function getContentSpec(contentSpecIndex : Int, contentSpec : com.sun.org.apache.xerces.internal.impl.dtd.XMLContentSpec) : Bool;
	
	
}
