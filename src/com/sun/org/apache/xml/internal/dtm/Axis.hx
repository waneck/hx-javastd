package com.sun.org.apache.xml.internal.dtm;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: Axis.java,v 1.2.4.1 2005/09/15 08:14:51 suresh_emailid Exp $
*/
/**
* Specifies values related to XPath Axes.
* <p>The ancestor, descendant, following, preceding and self axes partition a
* document (ignoring attribute and namespace nodes): they do not overlap
* and together they contain all the nodes in the document.</p>
*
*/
extern class Axis
{
	/**
	* The ancestor axis contains the ancestors of the context node;
	*  the ancestors of the context node consist of the parent of context
	*  node and the parent's parent and so on; thus, the ancestor axis will
	*  always include the root node, unless the context node is the root node.
	*/
	@:public @:static @:final public static var ANCESTOR(default, null) : Int;
	
	/**
	* the ancestor-or-self axis contains the context node and the ancestors of
	*  the context node; thus, the ancestor axis will always include the
	*  root node.
	*/
	@:public @:static @:final public static var ANCESTORORSELF(default, null) : Int;
	
	/**
	* the attribute axis contains the attributes of the context node; the axis
	*  will be empty unless the context node is an element.
	*/
	@:public @:static @:final public static var ATTRIBUTE(default, null) : Int;
	
	/** The child axis contains the children of the context node. */
	@:public @:static @:final public static var CHILD(default, null) : Int;
	
	/**
	* The descendant axis contains the descendants of the context node;
	*  a descendant is a child or a child of a child and so on; thus the
	*  descendant axis never contains attribute or namespace nodes.
	*/
	@:public @:static @:final public static var DESCENDANT(default, null) : Int;
	
	/**
	* The descendant-or-self axis contains the context node and the
	*  descendants of the context node.
	*/
	@:public @:static @:final public static var DESCENDANTORSELF(default, null) : Int;
	
	/**
	* the following axis contains all nodes in the same document as the
	*  context node that are after the context node in document order, excluding
	*  any descendants and excluding attribute nodes and namespace nodes.
	*/
	@:public @:static @:final public static var FOLLOWING(default, null) : Int;
	
	/**
	* The following-sibling axis contains all the following siblings of the
	*  context node; if the context node is an attribute node or namespace node,
	*  the following-sibling axis is empty.
	*/
	@:public @:static @:final public static var FOLLOWINGSIBLING(default, null) : Int;
	
	/**
	* The namespace axis contains the namespace nodes of the context node; the
	*  axis will be empty unless the context node is an element.
	*/
	@:public @:static @:final public static var NAMESPACEDECLS(default, null) : Int;
	
	/**
	* The namespace axis contains the namespace nodes of the context node; the
	*  axis will be empty unless the context node is an element.
	*/
	@:public @:static @:final public static var NAMESPACE(default, null) : Int;
	
	/**
	* The parent axis contains the parent of the context node,
	*  if there is one.
	*/
	@:public @:static @:final public static var PARENT(default, null) : Int;
	
	/**
	* The preceding axis contains all nodes in the same document as the context
	*  node that are before the context node in document order, excluding any
	*  ancestors and excluding attribute nodes and namespace nodes
	*/
	@:public @:static @:final public static var PRECEDING(default, null) : Int;
	
	/**
	* The preceding-sibling axis contains all the preceding siblings of the
	*  context node; if the context node is an attribute node or namespace node,
	*  the preceding-sibling axis is empty.
	*/
	@:public @:static @:final public static var PRECEDINGSIBLING(default, null) : Int;
	
	/** The self axis contains just the context node itself. */
	@:public @:static @:final public static var SELF(default, null) : Int;
	
	/**
	* A non-xpath axis, traversing the subtree including the subtree
	*  root, descendants, attributes, and namespace node decls.
	*/
	@:public @:static @:final public static var ALLFROMNODE(default, null) : Int;
	
	/**
	* A non-xpath axis, traversing the the preceding and the ancestor nodes,
	* needed for inverseing select patterns to match patterns.
	*/
	@:public @:static @:final public static var PRECEDINGANDANCESTOR(default, null) : Int;
	
	/**
	* A non-xpath axis, returns all nodes in the tree from and including the
	* root.
	*/
	@:public @:static @:final public static var ALL(default, null) : Int;
	
	/**
	* A non-xpath axis, returns all nodes that aren't namespaces or attributes,
	* from and including the root.
	*/
	@:public @:static @:final public static var DESCENDANTSFROMROOT(default, null) : Int;
	
	/**
	* A non-xpath axis, returns all nodes that aren't namespaces or attributes,
	* from and including the root.
	*/
	@:public @:static @:final public static var DESCENDANTSORSELFFROMROOT(default, null) : Int;
	
	/**
	* A non-xpath axis, returns root only.
	*/
	@:public @:static @:final public static var ROOT(default, null) : Int;
	
	/**
	* A non-xpath axis, for functions.
	*/
	@:public @:static @:final public static var FILTEREDLIST(default, null) : Int;
	
	@:overload @:public @:static public static function isReverse(axis : Int) : Bool;
	
	@:overload @:public @:static public static function getNames(index : Int) : String;
	
	@:overload @:public @:static public static function getNamesLength() : Int;
	
	
}
