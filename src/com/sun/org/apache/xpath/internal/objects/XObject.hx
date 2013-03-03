package com.sun.org.apache.xpath.internal.objects;
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
* $Id: XObject.java,v 1.2.4.1 2005/09/14 20:34:45 jeffsuttor Exp $
*/
extern class XObject extends com.sun.org.apache.xpath.internal.Expression implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* The java object which this object wraps.
	*  @serial
	*/
	@:protected private var m_obj : Dynamic;
	
	/**
	* Create an XObject.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create an XObject.
	*
	* @param obj Can be any object, should be a specific type
	* for derived classes, or null.
	*/
	@:overload @:public public function new(obj : Dynamic) : Void;
	
	@:overload @:protected private function setObject(obj : Dynamic) : Void;
	
	/**
	* For support of literal objects in xpaths.
	*
	* @param xctxt The XPath execution context.
	*
	* @return This object.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Specify if it's OK for detach to release the iterator for reuse.
	* This function should be called with a value of false for objects that are
	* stored in variables.
	* Calling this with a value of false on a XNodeSet will cause the nodeset
	* to be cached.
	*
	* @param allowRelease true if it is OK for detach to release this iterator
	* for pooling.
	*/
	@:overload @:public public function allowDetachToRelease(allowRelease : Bool) : Void;
	
	/**
	* Detaches the <code>DTMIterator</code> from the set which it iterated
	* over, releasing any computational resources and placing the iterator
	* in the INVALID state. After <code>detach</code> has been invoked,
	* calls to <code>nextNode</code> or <code>previousNode</code> will
	* raise a runtime exception.
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* Forces the object to release it's resources.  This is more harsh than
	* detach().
	*/
	@:overload @:public public function destruct() : Void;
	
	/**
	* Reset for fresh reuse.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Directly call the
	* characters method on the passed ContentHandler for the
	* string-value. Multiple calls to the
	* ContentHandler's characters methods may well occur for a single call to
	* this method.
	*
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public public function dispatchCharactersEvents(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Create the right XObject based on the type of the object passed.  This
	* function can not make an XObject that exposes DOM Nodes, NodeLists, and
	* NodeIterators to the XSLT stylesheet as node-sets.
	*
	* @param val The java object which this object will wrap.
	*
	* @return the right XObject based on the type of the object passed.
	*/
	@:overload @:static @:public public static function create(val : Dynamic) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Create the right XObject based on the type of the object passed.
	* This function <emph>can</emph> make an XObject that exposes DOM Nodes, NodeLists, and
	* NodeIterators to the XSLT stylesheet as node-sets.
	*
	* @param val The java object which this object will wrap.
	* @param xctxt The XPath context.
	*
	* @return the right XObject based on the type of the object passed.
	*/
	@:overload @:static @:public public static function create(val : Dynamic, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/** Constant for NULL object type */
	@:public @:static @:final public static var CLASS_NULL(default, null) : Int;
	
	/** Constant for UNKNOWN object type */
	@:public @:static @:final public static var CLASS_UNKNOWN(default, null) : Int;
	
	/** Constant for BOOLEAN  object type */
	@:public @:static @:final public static var CLASS_BOOLEAN(default, null) : Int;
	
	/** Constant for NUMBER object type */
	@:public @:static @:final public static var CLASS_NUMBER(default, null) : Int;
	
	/** Constant for STRING object type */
	@:public @:static @:final public static var CLASS_STRING(default, null) : Int;
	
	/** Constant for NODESET object type */
	@:public @:static @:final public static var CLASS_NODESET(default, null) : Int;
	
	/** Constant for RESULT TREE FRAGMENT object type */
	@:public @:static @:final public static var CLASS_RTREEFRAG(default, null) : Int;
	
	/** Represents an unresolved variable type as an integer. */
	@:public @:static @:final public static var CLASS_UNRESOLVEDVARIABLE(default, null) : Int;
	
	/**
	* Tell what kind of class this is.
	*
	* @return CLASS_UNKNOWN
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#UNKNOWN" + object class name
	*/
	@:overload @:public public function getTypeString() : String;
	
	/**
	* Cast result object to a number. Always issues an error.
	*
	* @return 0.0
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function num() : Float;
	
	/**
	* Cast result object to a number, but allow side effects, such as the
	* incrementing of an iterator.
	*
	* @return numeric value of the string conversion from the
	* next node in the NodeSetDTM, or NAN if no node was found
	*/
	@:overload @:public public function numWithSideEffects() : Float;
	
	/**
	* Cast result object to a boolean. Always issues an error.
	*
	* @return false
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function bool() : Bool;
	
	/**
	* Cast result object to a boolean, but allow side effects, such as the
	* incrementing of an iterator.
	*
	* @return True if there is a next node in the nodeset
	*/
	@:overload @:public public function boolWithSideEffects() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload @:public public function xstr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Cast result object to a string.
	*
	* @return The object as a string
	*/
	@:overload @:public public function str() : String;
	
	/**
	* Return the string representation of the object
	*
	*
	* @return the string representation of the object
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @param support XPath context to use for the conversion
	*
	* @return the objec as a result tree fragment.
	*/
	@:overload @:public public function rtf(support : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @param support XPath context to use for the conversion
	*
	* @return the objec as a result tree fragment.
	*/
	@:overload @:public public function rtree(support : com.sun.org.apache.xpath.internal.XPathContext) : org.w3c.dom.DocumentFragment;
	
	/**
	* For functions to override.
	*
	* @return null
	*/
	@:overload @:public public function rtree() : org.w3c.dom.DocumentFragment;
	
	/**
	* For functions to override.
	*
	* @return null
	*/
	@:overload @:public public function rtf() : Int;
	
	/**
	* Return a java object that's closest to the representation
	* that should be handed to an extension.
	*
	* @return The object that this class wraps
	*/
	@:overload @:public public function object() : Dynamic;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function iter() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Get a fresh copy of the object.  For use with variables.
	*
	* @return This object, unless overridden by subclass.
	*/
	@:overload @:public public function getFresh() : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function nodeset() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function nodelist() : org.w3c.dom.NodeList;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return The object as a NodeSetDTM.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function mutableNodeset() : com.sun.org.apache.xpath.internal.NodeSetDTM;
	
	/**
	* Cast object to type t.
	*
	* @param t Type of object to cast this to
	* @param support XPath context to use for the conversion
	*
	* @return This object as the given type t
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function castToType(t : Int, support : com.sun.org.apache.xpath.internal.XPathContext) : Dynamic;
	
	/**
	* Tell if one object is less than the other.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is less than the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function lessThan(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is less than or equal to the other.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is less than or equal to the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function lessThanOrEqual(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is greater than the other.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is greater than the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function greaterThan(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is greater than or equal to the other.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is greater than or equal to the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function greaterThanOrEqual(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is equal to the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if two objects are functionally not equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if this object is not equal to the given object
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function notEquals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param msg Error message to issue
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function error(msg : String) : Void;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param msg Error message to issue
	* @param args Arguments to use in the message
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function error(msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* XObjects should not normally need to fix up variables.
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Cast result object to a string.
	*
	*
	* NEEDSDOC @param fsb
	* @return The string this wraps or the empty string if null
	*/
	@:overload @:public public function appendToFsb(fsb : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload @:public override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
