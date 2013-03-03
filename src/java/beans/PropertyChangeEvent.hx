package java.beans;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A "PropertyChange" event gets delivered whenever a bean changes a "bound"
* or "constrained" property.  A PropertyChangeEvent object is sent as an
* argument to the PropertyChangeListener and VetoableChangeListener methods.
* <P>
* Normally PropertyChangeEvents are accompanied by the name and the old
* and new value of the changed property.  If the new value is a primitive
* type (such as int or boolean) it must be wrapped as the
* corresponding java.lang.* Object type (such as Integer or Boolean).
* <P>
* Null values may be provided for the old and the new values if their
* true values are not known.
* <P>
* An event source may send a null object as the name to indicate that an
* arbitrary set of if its properties have changed.  In this case the
* old and new values should also be null.
*/
extern class PropertyChangeEvent extends java.util.EventObject
{
	/**
	* Constructs a new <code>PropertyChangeEvent</code>.
	*
	* @param source  The bean that fired the event.
	* @param propertyName  The programmatic name of the property
	*          that was changed.
	* @param oldValue  The old value of the property.
	* @param newValue  The new value of the property.
	*/
	@:overload @:public public function new(source : Dynamic, propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Gets the programmatic name of the property that was changed.
	*
	* @return  The programmatic name of the property that was changed.
	*          May be null if multiple properties have changed.
	*/
	@:overload @:public public function getPropertyName() : String;
	
	/**
	* Gets the new value for the property, expressed as an Object.
	*
	* @return  The new value for the property, expressed as an Object.
	*          May be null if multiple properties have changed.
	*/
	@:overload @:public public function getNewValue() : Dynamic;
	
	/**
	* Gets the old value for the property, expressed as an Object.
	*
	* @return  The old value for the property, expressed as an Object.
	*          May be null if multiple properties have changed.
	*/
	@:overload @:public public function getOldValue() : Dynamic;
	
	/**
	* Sets the propagationId object for the event.
	*
	* @param propagationId  The propagationId object for the event.
	*/
	@:overload @:public public function setPropagationId(propagationId : Dynamic) : Void;
	
	/**
	* The "propagationId" field is reserved for future use.  In Beans 1.0
	* the sole requirement is that if a listener catches a PropertyChangeEvent
	* and then fires a PropertyChangeEvent of its own, then it should
	* make sure that it propagates the propagationId field from its
	* incoming event to its outgoing event.
	*
	* @return the propagationId object associated with a bound/constrained
	*          property update.
	*/
	@:overload @:public public function getPropagationId() : Dynamic;
	
	/**
	* Returns a string representation of the object.
	*
	* @return a string representation of the object
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function toString() : String;
	
	
}
