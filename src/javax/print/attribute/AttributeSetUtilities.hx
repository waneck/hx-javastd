package javax.print.attribute;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributeSetUtilities
{
	/**
	* Creates an unmodifiable view of the given attribute set.
	*
	* @param  attributeSet  Underlying attribute set.
	*
	* @return  Unmodifiable view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null. Null is never a
	*/
	@:overload public static function unmodifiableView(attributeSet : javax.print.attribute.AttributeSet) : javax.print.attribute.AttributeSet;
	
	/**
	* Creates an unmodifiable view of the given doc attribute set.
	*
	* @param  attributeSet  Underlying doc attribute set.
	*
	* @return  Unmodifiable view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function unmodifiableView(attributeSet : javax.print.attribute.DocAttributeSet) : javax.print.attribute.DocAttributeSet;
	
	/**
	* Creates an unmodifiable view of the given print request attribute set.
	*
	* @param  attributeSet  Underlying print request attribute set.
	*
	* @return  Unmodifiable view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function unmodifiableView(attributeSet : javax.print.attribute.PrintRequestAttributeSet) : javax.print.attribute.PrintRequestAttributeSet;
	
	/**
	* Creates an unmodifiable view of the given print job attribute set.
	*
	* @param  attributeSet  Underlying print job attribute set.
	*
	* @return  Unmodifiable view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function unmodifiableView(attributeSet : javax.print.attribute.PrintJobAttributeSet) : javax.print.attribute.PrintJobAttributeSet;
	
	/**
	* Creates an unmodifiable view of the given print service attribute set.
	*
	* @param  attributeSet  Underlying print service attribute set.
	*
	* @return  Unmodifiable view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function unmodifiableView(attributeSet : javax.print.attribute.PrintServiceAttributeSet) : javax.print.attribute.PrintServiceAttributeSet;
	
	/**
	* Creates a synchronized view of the given attribute set.
	*
	* @param  attributeSet  Underlying attribute set.
	*
	* @return  Synchronized view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function synchronizedView(attributeSet : javax.print.attribute.AttributeSet) : javax.print.attribute.AttributeSet;
	
	/**
	* Creates a synchronized view of the given doc attribute set.
	*
	* @param  attributeSet  Underlying doc attribute set.
	*
	* @return  Synchronized view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function synchronizedView(attributeSet : javax.print.attribute.DocAttributeSet) : javax.print.attribute.DocAttributeSet;
	
	/**
	* Creates a synchronized view of the given print request attribute set.
	*
	* @param  attributeSet  Underlying print request attribute set.
	*
	* @return  Synchronized view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function synchronizedView(attributeSet : javax.print.attribute.PrintRequestAttributeSet) : javax.print.attribute.PrintRequestAttributeSet;
	
	/**
	* Creates a synchronized view of the given print job attribute set.
	*
	* @param  attributeSet  Underlying print job attribute set.
	*
	* @return  Synchronized view of <CODE>attributeSet</CODE>.
	*
	* @exception  NullPointerException
	*     Thrown if <CODE>attributeSet</CODE> is null.
	*/
	@:overload public static function synchronizedView(attributeSet : javax.print.attribute.PrintJobAttributeSet) : javax.print.attribute.PrintJobAttributeSet;
	
	/**
	* Creates a synchronized view of the given print service attribute set.
	*
	* @param  attributeSet  Underlying print service attribute set.
	*
	* @return  Synchronized view of <CODE>attributeSet</CODE>.
	*/
	@:overload public static function synchronizedView(attributeSet : javax.print.attribute.PrintServiceAttributeSet) : javax.print.attribute.PrintServiceAttributeSet;
	
	/**
	* Verify that the given object is a {@link java.lang.Class Class} that
	* implements the given interface, which is assumed to be interface {@link
	* Attribute Attribute} or a subinterface thereof.
	*
	* @param  object     Object to test.
	* @param  interfaceName  Interface the object must implement.
	*
	* @return  If <CODE>object</CODE> is a {@link java.lang.Class Class}
	*          that implements <CODE>interfaceName</CODE>,
	*          <CODE>object</CODE> is returned downcast to type {@link
	*          java.lang.Class Class}; otherwise an exception is thrown.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>object</CODE> is null.
	* @exception  ClassCastException
	*     (unchecked exception) Thrown if <CODE>object</CODE> is not a
	*     {@link java.lang.Class Class} that implements
	*     <CODE>interfaceName</CODE>.
	*/
	@:overload public static function verifyAttributeCategory(object : Dynamic, interfaceName : Class<Dynamic>) : Class<Dynamic>;
	
	/**
	* Verify that the given object is an instance of the given interface, which
	* is assumed to be interface {@link Attribute Attribute} or a subinterface
	* thereof.
	*
	* @param  object     Object to test.
	* @param  interfaceName  Interface of which the object must be an instance.
	*
	* @return  If <CODE>object</CODE> is an instance of
	*          <CODE>interfaceName</CODE>, <CODE>object</CODE> is returned
	*          downcast to type {@link Attribute Attribute}; otherwise an
	*          exception is thrown.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>object</CODE> is null.
	* @exception  ClassCastException
	*     (unchecked exception) Thrown if <CODE>object</CODE> is not an
	*     instance of <CODE>interfaceName</CODE>.
	*/
	@:overload public static function verifyAttributeValue(object : Dynamic, interfaceName : Class<Dynamic>) : javax.print.attribute.Attribute;
	
	/**
	* Verify that the given attribute category object is equal to the
	* category of the given attribute value object. If so, this method
	* returns doing nothing. If not, this method throws an exception.
	*
	* @param  category   Attribute category to test.
	* @param  attribute  Attribute value to test.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if the <CODE>category</CODE> is
	*     null or if the <CODE>attribute</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if the <CODE>category</CODE> is not
	*     equal to the category of the <CODE>attribute</CODE>.
	*/
	@:overload public static function verifyCategoryForValue(category : Class<Dynamic>, attribute : javax.print.attribute.Attribute) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$UnmodifiableAttributeSet') @:internal extern class AttributeSetUtilities_UnmodifiableAttributeSet implements javax.print.attribute.AttributeSet implements java.io.Serializable
{
	/* Unmodifiable view of the underlying attribute set.
	*/
	@:overload public function new(attributeSet : javax.print.attribute.AttributeSet) : Void;
	
	@:overload public function get(key : Class<Dynamic>) : javax.print.attribute.Attribute;
	
	@:overload public function add(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload @:synchronized public function remove(category : Class<Dynamic>) : Bool;
	
	@:overload public function remove(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload public function containsKey(category : Class<Dynamic>) : Bool;
	
	@:overload public function containsValue(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload public function addAll(attributes : javax.print.attribute.AttributeSet) : Bool;
	
	@:overload public function size() : Int;
	
	@:overload public function toArray() : java.NativeArray<javax.print.attribute.Attribute>;
	
	@:overload public function clear() : Void;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$UnmodifiableDocAttributeSet') @:internal extern class AttributeSetUtilities_UnmodifiableDocAttributeSet extends AttributeSetUtilities_UnmodifiableAttributeSet implements javax.print.attribute.DocAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.DocAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$UnmodifiablePrintRequestAttributeSet') @:internal extern class AttributeSetUtilities_UnmodifiablePrintRequestAttributeSet extends AttributeSetUtilities_UnmodifiableAttributeSet implements javax.print.attribute.PrintRequestAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$UnmodifiablePrintJobAttributeSet') @:internal extern class AttributeSetUtilities_UnmodifiablePrintJobAttributeSet extends AttributeSetUtilities_UnmodifiableAttributeSet implements javax.print.attribute.PrintJobAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintJobAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$UnmodifiablePrintServiceAttributeSet') @:internal extern class AttributeSetUtilities_UnmodifiablePrintServiceAttributeSet extends AttributeSetUtilities_UnmodifiableAttributeSet implements javax.print.attribute.PrintServiceAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintServiceAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$SynchronizedAttributeSet') @:internal extern class AttributeSetUtilities_SynchronizedAttributeSet implements javax.print.attribute.AttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.AttributeSet) : Void;
	
	@:overload @:synchronized public function get(category : Class<Dynamic>) : javax.print.attribute.Attribute;
	
	@:overload @:synchronized public function add(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload @:synchronized public function remove(category : Class<Dynamic>) : Bool;
	
	@:overload @:synchronized public function remove(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload @:synchronized public function containsKey(category : Class<Dynamic>) : Bool;
	
	@:overload @:synchronized public function containsValue(attribute : javax.print.attribute.Attribute) : Bool;
	
	@:overload @:synchronized public function addAll(attributes : javax.print.attribute.AttributeSet) : Bool;
	
	@:overload @:synchronized public function size() : Int;
	
	@:overload @:synchronized public function toArray() : java.NativeArray<javax.print.attribute.Attribute>;
	
	@:overload @:synchronized public function clear() : Void;
	
	@:overload @:synchronized public function isEmpty() : Bool;
	
	@:overload @:synchronized public function equals(o : Dynamic) : Bool;
	
	@:overload @:synchronized public function hashCode() : Int;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$SynchronizedDocAttributeSet') @:internal extern class AttributeSetUtilities_SynchronizedDocAttributeSet extends AttributeSetUtilities_SynchronizedAttributeSet implements javax.print.attribute.DocAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.DocAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$SynchronizedPrintRequestAttributeSet') @:internal extern class AttributeSetUtilities_SynchronizedPrintRequestAttributeSet extends AttributeSetUtilities_SynchronizedAttributeSet implements javax.print.attribute.PrintRequestAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$SynchronizedPrintJobAttributeSet') @:internal extern class AttributeSetUtilities_SynchronizedPrintJobAttributeSet extends AttributeSetUtilities_SynchronizedAttributeSet implements javax.print.attribute.PrintJobAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintJobAttributeSet) : Void;
	
	
}
/**
* @serial include
*/
@:native('javax$print$attribute$AttributeSetUtilities$SynchronizedPrintServiceAttributeSet') @:internal extern class AttributeSetUtilities_SynchronizedPrintServiceAttributeSet extends AttributeSetUtilities_SynchronizedAttributeSet implements javax.print.attribute.PrintServiceAttributeSet implements java.io.Serializable
{
	@:overload public function new(attributeSet : javax.print.attribute.PrintServiceAttributeSet) : Void;
	
	
}
