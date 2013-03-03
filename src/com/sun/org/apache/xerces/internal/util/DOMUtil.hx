package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DOMUtil
{
	/** This class cannot be instantiated. */
	@:overload @:protected private function new() : Void;
	
	/**
	* Copies the source tree into the specified place in a destination
	* tree. The source node and its children are appended as children
	* of the destination node.
	* <p>
	* <em>Note:</em> This is an iterative implementation.
	*/
	@:overload @:public @:static public static function copyInto(src : org.w3c.dom.Node, dest : org.w3c.dom.Node) : Void;
	
	/** Finds and returns the first child element node. */
	@:overload @:public @:static public static function getFirstChildElement(parent : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/** Finds and returns the first visible child element node. */
	@:overload @:public @:static public static function getFirstVisibleChildElement(parent : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/** Finds and returns the first visible child element node. */
	@:overload @:public @:static public static function getFirstVisibleChildElement(parent : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : org.w3c.dom.Element;
	
	/** Finds and returns the last child element node.
	*  Overload previous method for non-Xerces node impl.
	*/
	@:overload @:public @:static public static function getLastChildElement(parent : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/** Finds and returns the last visible child element node. */
	@:overload @:public @:static public static function getLastVisibleChildElement(parent : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/** Finds and returns the last visible child element node.
	*  Overload previous method for non-Xerces node impl
	*/
	@:overload @:public @:static public static function getLastVisibleChildElement(parent : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : org.w3c.dom.Element;
	
	/** Finds and returns the next sibling element node. */
	@:overload @:public @:static public static function getNextSiblingElement(node : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function getNextVisibleSiblingElement(node : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function getNextVisibleSiblingElement(node : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function setHidden(node : org.w3c.dom.Node) : Void;
	
	@:overload @:public @:static public static function setHidden(node : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public @:static public static function setVisible(node : org.w3c.dom.Node) : Void;
	
	@:overload @:public @:static public static function setVisible(node : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public @:static public static function isHidden(node : org.w3c.dom.Node) : Bool;
	
	@:overload @:public @:static public static function isHidden(node : org.w3c.dom.Node, hiddenNodes : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	/** Finds and returns the first child node with the given name. */
	@:overload @:public @:static public static function getFirstChildElement(parent : org.w3c.dom.Node, elemName : String) : org.w3c.dom.Element;
	
	/** Finds and returns the last child node with the given name. */
	@:overload @:public @:static public static function getLastChildElement(parent : org.w3c.dom.Node, elemName : String) : org.w3c.dom.Element;
	
	/** Finds and returns the next sibling node with the given name. */
	@:overload @:public @:static public static function getNextSiblingElement(node : org.w3c.dom.Node, elemName : String) : org.w3c.dom.Element;
	
	/** Finds and returns the first child node with the given qualified name. */
	@:overload @:public @:static public static function getFirstChildElementNS(parent : org.w3c.dom.Node, uri : String, localpart : String) : org.w3c.dom.Element;
	
	/** Finds and returns the last child node with the given qualified name. */
	@:overload @:public @:static public static function getLastChildElementNS(parent : org.w3c.dom.Node, uri : String, localpart : String) : org.w3c.dom.Element;
	
	/** Finds and returns the next sibling node with the given qualified name. */
	@:overload @:public @:static public static function getNextSiblingElementNS(node : org.w3c.dom.Node, uri : String, localpart : String) : org.w3c.dom.Element;
	
	/** Finds and returns the first child node with the given name. */
	@:overload @:public @:static public static function getFirstChildElement(parent : org.w3c.dom.Node, elemNames : java.NativeArray<String>) : org.w3c.dom.Element;
	
	/** Finds and returns the last child node with the given name. */
	@:overload @:public @:static public static function getLastChildElement(parent : org.w3c.dom.Node, elemNames : java.NativeArray<String>) : org.w3c.dom.Element;
	
	/** Finds and returns the next sibling node with the given name. */
	@:overload @:public @:static public static function getNextSiblingElement(node : org.w3c.dom.Node, elemNames : java.NativeArray<String>) : org.w3c.dom.Element;
	
	/** Finds and returns the first child node with the given qualified name. */
	@:overload @:public @:static public static function getFirstChildElementNS(parent : org.w3c.dom.Node, elemNames : java.NativeArray<java.NativeArray<String>>) : org.w3c.dom.Element;
	
	/** Finds and returns the last child node with the given qualified name. */
	@:overload @:public @:static public static function getLastChildElementNS(parent : org.w3c.dom.Node, elemNames : java.NativeArray<java.NativeArray<String>>) : org.w3c.dom.Element;
	
	/** Finds and returns the next sibling node with the given qualified name. */
	@:overload @:public @:static public static function getNextSiblingElementNS(node : org.w3c.dom.Node, elemNames : java.NativeArray<java.NativeArray<String>>) : org.w3c.dom.Element;
	
	/**
	* Finds and returns the first child node with the given name and
	* attribute name, value pair.
	*/
	@:overload @:public @:static public static function getFirstChildElement(parent : org.w3c.dom.Node, elemName : String, attrName : String, attrValue : String) : org.w3c.dom.Element;
	
	/**
	* Finds and returns the last child node with the given name and
	* attribute name, value pair.
	*/
	@:overload @:public @:static public static function getLastChildElement(parent : org.w3c.dom.Node, elemName : String, attrName : String, attrValue : String) : org.w3c.dom.Element;
	
	/**
	* Finds and returns the next sibling node with the given name and
	* attribute name, value pair. Since only elements have attributes,
	* the node returned will be of type Node.ELEMENT_NODE.
	*/
	@:overload @:public @:static public static function getNextSiblingElement(node : org.w3c.dom.Node, elemName : String, attrName : String, attrValue : String) : org.w3c.dom.Element;
	
	/**
	* Returns the concatenated child text of the specified node.
	* This method only looks at the immediate children of type
	* <code>Node.TEXT_NODE</code> or the children of any child
	* node that is of type <code>Node.CDATA_SECTION_NODE</code>
	* for the concatenation.
	*
	* @param node The node to look at.
	*/
	@:overload @:public @:static public static function getChildText(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getName(node : org.w3c.dom.Node) : String;
	
	/** returns local name of this element if not null, otherwise
	returns the name of the node
	*/
	@:overload @:public @:static public static function getLocalName(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getParent(elem : org.w3c.dom.Element) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function getDocument(node : org.w3c.dom.Node) : org.w3c.dom.Document;
	
	@:overload @:public @:static public static function getRoot(doc : org.w3c.dom.Document) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function getAttr(elem : org.w3c.dom.Element, name : String) : org.w3c.dom.Attr;
	
	@:overload @:public @:static public static function getAttrNS(elem : org.w3c.dom.Element, nsUri : String, localName : String) : org.w3c.dom.Attr;
	
	@:overload @:public @:static public static function getAttrs(elem : org.w3c.dom.Element) : java.NativeArray<org.w3c.dom.Attr>;
	
	@:overload @:public @:static public static function getValue(attribute : org.w3c.dom.Attr) : String;
	
	@:overload @:public @:static public static function getAttrValue(elem : org.w3c.dom.Element, name : String) : String;
	
	@:overload @:public @:static public static function getAttrValueNS(elem : org.w3c.dom.Element, nsUri : String, localName : String) : String;
	
	@:overload @:public @:static public static function getPrefix(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getNamespaceURI(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getAnnotation(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getSyntheticAnnotation(node : org.w3c.dom.Node) : String;
	
	/**
	* Creates a DOMException. On J2SE 1.4 and above the cause for the exception will be set.
	*/
	@:overload @:public @:static public static function createDOMException(code : java.StdTypes.Int16, cause : java.lang.Throwable) : org.w3c.dom.DOMException;
	
	/**
	* Creates an LSException. On J2SE 1.4 and above the cause for the exception will be set.
	*/
	@:overload @:public @:static public static function createLSException(code : java.StdTypes.Int16, cause : java.lang.Throwable) : org.w3c.dom.ls.LSException;
	
	
}
/**
* Holder of methods from java.lang.Throwable.
*/
@:native('com$sun$org$apache$xerces$internal$util$DOMUtil$ThrowableMethods') @:internal extern class DOMUtil_ThrowableMethods
{
	
}
