package javax.accessibility;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessibleRelation extends javax.accessibility.AccessibleBundle
{
	/**
	* Indicates an object is a label for one or more target objects.
	*
	* @see #getTarget
	* @see #CONTROLLER_FOR
	* @see #CONTROLLED_BY
	* @see #LABELED_BY
	* @see #MEMBER_OF
	*/
	@:public @:static @:final public static var LABEL_FOR(default, null) : String;
	
	/**
	* Indicates an object is labeled by one or more target objects.
	*
	* @see #getTarget
	* @see #CONTROLLER_FOR
	* @see #CONTROLLED_BY
	* @see #LABEL_FOR
	* @see #MEMBER_OF
	*/
	@:public @:static @:final public static var LABELED_BY(default, null) : String;
	
	/**
	* Indicates an object is a member of a group of one or more
	* target objects.
	*
	* @see #getTarget
	* @see #CONTROLLER_FOR
	* @see #CONTROLLED_BY
	* @see #LABEL_FOR
	* @see #LABELED_BY
	*/
	@:public @:static @:final public static var MEMBER_OF(default, null) : String;
	
	/**
	* Indicates an object is a controller for one or more target
	* objects.
	*
	* @see #getTarget
	* @see #CONTROLLED_BY
	* @see #LABEL_FOR
	* @see #LABELED_BY
	* @see #MEMBER_OF
	*/
	@:public @:static @:final public static var CONTROLLER_FOR(default, null) : String;
	
	/**
	* Indicates an object is controlled by one or more target
	* objects.
	*
	* @see #getTarget
	* @see #CONTROLLER_FOR
	* @see #LABEL_FOR
	* @see #LABELED_BY
	* @see #MEMBER_OF
	*/
	@:public @:static @:final public static var CONTROLLED_BY(default, null) : String;
	
	/**
	* Indicates an object is logically contiguous with a second
	* object where the second object occurs after the object.
	* An example is a paragraph of text that runs to the end of
	* a page and continues on the next page with an intervening
	* text footer and/or text header.  The two parts of
	* the paragraph are separate text elements but are related
	* in that the second element is a continuation
	* of the first
	* element.  In other words, the first element "flows to"
	* the second element.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var FLOWS_TO(default, null) : String;
	
	/**
	* Indicates an object is logically contiguous with a second
	* object where the second object occurs before the object.
	* An example is a paragraph of text that runs to the end of
	* a page and continues on the next page with an intervening
	* text footer and/or text header.  The two parts of
	* the paragraph are separate text elements but are related
	* in that the second element is a continuation of the first
	* element.  In other words, the second element "flows from"
	* the second element.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var FLOWS_FROM(default, null) : String;
	
	/**
	* Indicates that an object is a subwindow of one or more
	* objects.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var SUBWINDOW_OF(default, null) : String;
	
	/**
	* Indicates that an object is a parent window of one or more
	* objects.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var PARENT_WINDOW_OF(default, null) : String;
	
	/**
	* Indicates that an object has one or more objects
	* embedded in it.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var EMBEDS(default, null) : String;
	
	/**
	* Indicates that an object is embedded in one or more
	* objects.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var EMBEDDED_BY(default, null) : String;
	
	/**
	* Indicates that an object is a child node of one
	* or more objects.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var CHILD_NODE_OF(default, null) : String;
	
	/**
	* Identifies that the target group for a label has changed
	*/
	@:public @:static @:final public static var LABEL_FOR_PROPERTY(default, null) : String;
	
	/**
	* Identifies that the objects that are doing the labeling have changed
	*/
	@:public @:static @:final public static var LABELED_BY_PROPERTY(default, null) : String;
	
	/**
	* Identifies that group membership has changed.
	*/
	@:public @:static @:final public static var MEMBER_OF_PROPERTY(default, null) : String;
	
	/**
	* Identifies that the controller for the target object has changed
	*/
	@:public @:static @:final public static var CONTROLLER_FOR_PROPERTY(default, null) : String;
	
	/**
	* Identifies that the target object that is doing the controlling has
	* changed
	*/
	@:public @:static @:final public static var CONTROLLED_BY_PROPERTY(default, null) : String;
	
	/**
	* Indicates the FLOWS_TO relation between two objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var FLOWS_TO_PROPERTY(default, null) : String;
	
	/**
	* Indicates the FLOWS_FROM relation between two objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var FLOWS_FROM_PROPERTY(default, null) : String;
	
	/**
	* Indicates the SUBWINDOW_OF relation between two or more objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var SUBWINDOW_OF_PROPERTY(default, null) : String;
	
	/**
	* Indicates the PARENT_WINDOW_OF relation between two or more objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var PARENT_WINDOW_OF_PROPERTY(default, null) : String;
	
	/**
	* Indicates the EMBEDS relation between two or more objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var EMBEDS_PROPERTY(default, null) : String;
	
	/**
	* Indicates the EMBEDDED_BY relation between two or more objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var EMBEDDED_BY_PROPERTY(default, null) : String;
	
	/**
	* Indicates the CHILD_NODE_OF relation between two or more objects
	* has changed.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var CHILD_NODE_OF_PROPERTY(default, null) : String;
	
	/**
	* Create a new AccessibleRelation using the given locale independent key.
	* The key String should be a locale independent key for the relation.
	* It is not intended to be used as the actual String to display
	* to the user.  To get the localized string, use toDisplayString.
	*
	* @param key the locale independent name of the relation.
	* @see AccessibleBundle#toDisplayString
	*/
	@:overload @:public public function new(key : String) : Void;
	
	/**
	* Creates a new AccessibleRelation using the given locale independent key.
	* The key String should be a locale independent key for the relation.
	* It is not intended to be used as the actual String to display
	* to the user.  To get the localized string, use toDisplayString.
	*
	* @param key the locale independent name of the relation.
	* @param target the target object for this relation
	* @see AccessibleBundle#toDisplayString
	*/
	@:overload @:public public function new(key : String, target : Dynamic) : Void;
	
	/**
	* Creates a new AccessibleRelation using the given locale independent key.
	* The key String should be a locale independent key for the relation.
	* It is not intended to be used as the actual String to display
	* to the user.  To get the localized string, use toDisplayString.
	*
	* @param key the locale independent name of the relation.
	* @param target the target object(s) for this relation
	* @see AccessibleBundle#toDisplayString
	*/
	@:overload @:public public function new(key : String, target : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the key for this relation
	*
	* @return the key for this relation
	*
	* @see #CONTROLLER_FOR
	* @see #CONTROLLED_BY
	* @see #LABEL_FOR
	* @see #LABELED_BY
	* @see #MEMBER_OF
	*/
	@:overload @:public public function getKey() : String;
	
	/**
	* Returns the target objects for this relation
	*
	* @return an array containing the target objects for this relation
	*/
	@:overload @:public public function getTarget() : java.NativeArray<Dynamic>;
	
	/**
	* Sets the target object for this relation
	*
	* @param target the target object for this relation
	*/
	@:overload @:public public function setTarget(target : Dynamic) : Void;
	
	/**
	* Sets the target objects for this relation
	*
	* @param target an array containing the target objects for this relation
	*/
	@:overload @:public public function setTarget(target : java.NativeArray<Dynamic>) : Void;
	
	
}
