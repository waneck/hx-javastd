package javax.xml.bind;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXBElement<T> implements java.io.Serializable
{
	/** xml element tag name */
	@:final @:protected private var name(default, null) : javax.xml.namespace.QName;
	
	/** Java datatype binding for xml element declaration's type. */
	@:final @:protected private var declaredType(default, null) : Class<T>;
	
	/** Scope of xml element declaration representing this xml element instance.
	*  Can be one of the following values:
	*  - {@link GlobalScope} for global xml element declaration.
	*  - local element declaration has a scope set to the Java class
	*     representation of complex type defintion containing
	*     xml element declaration.
	*/
	@:final @:protected private var scope(default, null) : Class<Dynamic>;
	
	/** xml element value.
	Represents content model and attributes of an xml element instance. */
	@:protected private var value : T;
	
	/** true iff the xml element instance has xsi:nil="true". */
	@:protected private var nil : Bool;
	
	/**
	* <p>Construct an xml element instance.</p>
	*
	* @param name          Java binding of xml element tag name
	* @param declaredType  Java binding of xml element declaration's type
	* @param scope
	*      Java binding of scope of xml element declaration.
	*      Passing null is the same as passing <tt>GlobalScope.class</tt>
	* @param value
	*      Java instance representing xml element's value.
	* @see #getScope()
	* @see #isTypeSubstituted()
	*/
	@:overload @:public public function new(name : javax.xml.namespace.QName, declaredType : Class<T>, scope : Class<Dynamic>, value : T) : Void;
	
	/**
	* Construct an xml element instance.
	*
	* This is just a convenience method for <tt>new JAXBElement(name,declaredType,GlobalScope.class,value)</tt>
	*/
	@:overload @:public public function new(name : javax.xml.namespace.QName, declaredType : Class<T>, value : T) : Void;
	
	/**
	* Returns the Java binding of the xml element declaration's type attribute.
	*/
	@:overload @:public public function getDeclaredType() : Class<T>;
	
	/**
	* Returns the xml element tag name.
	*/
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	/**
	* <p>Set the content model and attributes of this xml element.</p>
	*
	* <p>When this property is set to <tt>null</tt>, <tt>isNil()</tt> must by <tt>true</tt>.
	*    Details of constraint are described at {@link #isNil()}.</p>
	*
	* @see #isTypeSubstituted()
	*/
	@:overload @:public public function setValue(t : T) : Void;
	
	/**
	* <p>Return the content model and attribute values for this element.</p>
	*
	* <p>See {@link #isNil()} for a description of a property constraint when
	* this value is <tt>null</tt></p>
	*/
	@:overload @:public public function getValue() : T;
	
	/**
	* Returns scope of xml element declaration.
	*
	* @see #isGlobalScope()
	* @return <tt>GlobalScope.class</tt> if this element is of global scope.
	*/
	@:overload @:public public function getScope() : Class<Dynamic>;
	
	/**
	* <p>Returns <tt>true</tt> iff this element instance content model
	* is nil.</p>
	*
	* <p>This property always returns <tt>true</tt> when {@link #getValue()} is null.
	* Note that the converse is not true, when this property is <tt>true</tt>,
	* {@link #getValue()} can contain a non-null value for attribute(s). It is
	* valid for a nil xml element to have attribute(s).</p>
	*/
	@:overload @:public public function isNil() : Bool;
	
	/**
	* <p>Set whether this element has nil content.</p>
	*
	* @see #isNil()
	*/
	@:overload @:public public function setNil(value : Bool) : Void;
	
	/**
	* Returns true iff this xml element declaration is global.
	*/
	@:overload @:public public function isGlobalScope() : Bool;
	
	/**
	* Returns true iff this xml element instance's value has a different
	* type than xml element declaration's declared type.
	*/
	@:overload @:public public function isTypeSubstituted() : Bool;
	
	
}
/**
* Designates global scope for an xml element.
*/
@:native('javax$xml$bind$JAXBElement$GlobalScope') extern class JAXBElement_GlobalScope
{
	
}
