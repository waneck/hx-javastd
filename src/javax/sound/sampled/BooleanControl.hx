package javax.sound.sampled;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* A <code>BooleanControl</code> provides the ability to switch between
* two possible settings that affect a line's audio.  The settings are boolean
* values (<code>true</code> and <code>false</code>).  A graphical user interface
* might represent the control by a two-state button, an on/off switch, two
* mutually exclusive buttons, or a checkbox (among other possibilities).
* For example, depressing a button might activate a
* <code>{@link BooleanControl.Type#MUTE MUTE}</code> control to silence
* the line's audio.
* <p>
* As with other <code>{@link Control}</code> subclasses, a method is
* provided that returns string labels for the values, suitable for
* display in the user interface.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) extern class BooleanControl extends javax.sound.sampled.Control
{
	/**
	* Constructs a new boolean control object with the given parameters.
	*
	* @param type the type of control represented this float control object
	* @param initialValue the initial control value
	* @param trueStateLabel the label for the state represented by <code>true</code>,
	* such as "true" or "on."
	* @param falseStateLabel the label for the state represented by <code>false</code>,
	* such as "false" or "off."
	*/
	@:overload private function new(type : BooleanControl_Type, initialValue : Bool, trueStateLabel : String, falseStateLabel : String) : Void;
	
	/**
	* Constructs a new boolean control object with the given parameters.
	* The labels for the <code>true</code> and <code>false</code> states
	* default to "true" and "false."
	*
	* @param type the type of control represented by this float control object
	* @param initialValue the initial control value
	*/
	@:overload private function new(type : BooleanControl_Type, initialValue : Bool) : Void;
	
	/**
	* Sets the current value for the control.  The default
	* implementation simply sets the value as indicated.
	* Some controls require that their line be open before they can be affected
	* by setting a value.
	* @param value desired new value.
	*/
	@:overload public function setValue(value : Bool) : Void;
	
	/**
	* Obtains this control's current value.
	* @return current value.
	*/
	@:overload public function getValue() : Bool;
	
	/**
	* Obtains the label for the specified state.
	* @return the label for the specified state, such as "true" or "on"
	* for <code>true</code>, or "false" or "off" for <code>false</code>.
	*/
	@:overload public function getStateLabel(state : Bool) : String;
	
	/**
	* Provides a string representation of the control
	* @return a string description
	*/
	@:overload override public function toString() : String;
	
	
}
/**
* An instance of the <code>BooleanControl.Type</code> class identifies one kind of
* boolean control.  Static instances are provided for the
* common types.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) @:native('javax$sound$sampled$BooleanControl$Type') extern class BooleanControl_Type extends javax.sound.sampled.Control.Control_Type
{
	/**
	* Represents a control for the mute status of a line.
	* Note that mute status does not affect gain.
	*/
	public static var MUTE(default, null) : BooleanControl_Type;
	
	/**
	* Represents a control for whether reverberation is applied
	* to a line.  Note that the status of this control not affect
	* the reverberation settings for a line, but does affect whether
	* these settings are used.
	*/
	public static var APPLY_REVERB(default, null) : BooleanControl_Type;
	
	/**
	* Constructs a new boolean control type.
	* @param name  the name of the new boolean control type
	*/
	@:overload override private function new(name : String) : Void;
	
	
}
