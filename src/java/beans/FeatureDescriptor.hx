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
extern class FeatureDescriptor
{
	/**
	* Constructs a <code>FeatureDescriptor</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the programmatic name of this feature.
	*
	* @return The programmatic name of the property/method/event
	*/
	@:overload public function getName() : String;
	
	/**
	* Sets the programmatic name of this feature.
	*
	* @param name  The programmatic name of the property/method/event
	*/
	@:overload public function setName(name : String) : Void;
	
	/**
	* Gets the localized display name of this feature.
	*
	* @return The localized display name for the property/method/event.
	*  This defaults to the same as its programmatic name from getName.
	*/
	@:overload public function getDisplayName() : String;
	
	/**
	* Sets the localized display name of this feature.
	*
	* @param displayName  The localized display name for the
	*          property/method/event.
	*/
	@:overload public function setDisplayName(displayName : String) : Void;
	
	/**
	* The "expert" flag is used to distinguish between those features that are
	* intended for expert users from those that are intended for normal users.
	*
	* @return True if this feature is intended for use by experts only.
	*/
	@:overload public function isExpert() : Bool;
	
	/**
	* The "expert" flag is used to distinguish between features that are
	* intended for expert users from those that are intended for normal users.
	*
	* @param expert True if this feature is intended for use by experts only.
	*/
	@:overload public function setExpert(expert : Bool) : Void;
	
	/**
	* The "hidden" flag is used to identify features that are intended only
	* for tool use, and which should not be exposed to humans.
	*
	* @return True if this feature should be hidden from human users.
	*/
	@:overload public function isHidden() : Bool;
	
	/**
	* The "hidden" flag is used to identify features that are intended only
	* for tool use, and which should not be exposed to humans.
	*
	* @param hidden  True if this feature should be hidden from human users.
	*/
	@:overload public function setHidden(hidden : Bool) : Void;
	
	/**
	* The "preferred" flag is used to identify features that are particularly
	* important for presenting to humans.
	*
	* @return True if this feature should be preferentially shown to human users.
	*/
	@:overload public function isPreferred() : Bool;
	
	/**
	* The "preferred" flag is used to identify features that are particularly
	* important for presenting to humans.
	*
	* @param preferred  True if this feature should be preferentially shown
	*                   to human users.
	*/
	@:overload public function setPreferred(preferred : Bool) : Void;
	
	/**
	* Gets the short description of this feature.
	*
	* @return  A localized short description associated with this
	*   property/method/event.  This defaults to be the display name.
	*/
	@:overload public function getShortDescription() : String;
	
	/**
	* You can associate a short descriptive string with a feature.  Normally
	* these descriptive strings should be less than about 40 characters.
	* @param text  A (localized) short description to be associated with
	* this property/method/event.
	*/
	@:overload public function setShortDescription(text : String) : Void;
	
	/**
	* Associate a named attribute with this feature.
	*
	* @param attributeName  The locale-independent name of the attribute
	* @param value  The value.
	*/
	@:overload public function setValue(attributeName : String, value : Dynamic) : Void;
	
	/**
	* Retrieve a named attribute with this feature.
	*
	* @param attributeName  The locale-independent name of the attribute
	* @return  The value of the attribute.  May be null if
	*     the attribute is unknown.
	*/
	@:overload public function getValue(attributeName : String) : Dynamic;
	
	/**
	* Gets an enumeration of the locale-independent names of this
	* feature.
	*
	* @return  An enumeration of the locale-independent names of any
	*    attributes that have been registered with setValue.
	*/
	@:overload public function attributeNames() : java.util.Enumeration<String>;
	
	/**
	* Returns a string representation of the object.
	*
	* @return a string representation of the object
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function toString() : String;
	
	
}
