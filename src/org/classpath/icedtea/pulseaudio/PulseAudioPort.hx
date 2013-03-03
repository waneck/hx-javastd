package org.classpath.icedtea.pulseaudio;
/* PulseAudioClip.java
Copyright (C) 2008 Red Hat, Inc.

This file is part of IcedTea.

IcedTea is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2.

IcedTea is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with IcedTea; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
02110-1301 USA.

Linking this library statically or dynamically with other modules is
making a combined work based on this library.  Thus, the terms and
conditions of the GNU General Public License cover the whole
combination.

As a special exception, the copyright holders of this library give you
permission to link this library with independent modules to produce an
executable, regardless of the license terms of these independent
modules, and to copy and distribute the resulting executable under
terms of your choice, provided that you also meet, for each linked
independent module, the terms and conditions of the license of that
module.  An independent module is a module which is not derived from
or based on this library.  If you modify this library, you may extend
this exception to your version of the library, but you are not
obligated to do so.  If you do not wish to do so, delete this
exception statement from your version.
*/
@:internal extern class PulseAudioPort extends org.classpath.icedtea.pulseaudio.PulseAudioLine implements javax.sound.sampled.Port implements org.classpath.icedtea.pulseaudio.PulseAudioPlaybackLine
{
	@:overload @:public @:abstract public function native_set_volume(newValue : Single) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* 
	* @see {@link update_channels_and_volume}
	*/
	@:overload @:public @:abstract public function native_update_volume() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getCachedVolume() : Single;
	
	@:overload @:public public function setCachedVolume(value : Single) : Void;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public @:abstract override public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	@:overload @:public override public function open() : Void;
	
	@:overload @:public public function getName() : String;
	
	/**
	* Indicates whether the line supports a control of the specified type.
	* Some controls may only be available when the line is open.
	* @param control the type of the control for which support is queried
	* @return <code>true</code> if at least one control of the specified type is
	* supported, otherwise <code>false</code>.
	*/
	@:overload @:public @:public @:public override public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	/**
	* Obtains the set of controls associated with this line.
	* Some controls may only be available when the line is open.
	* If there are no controls, this method returns an array of length 0.
	* @return the array of controls
	* @see #getControl
	*/
	@:overload @:public @:public @:public override public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	/**
	* Obtains a control of the specified type,
	* if there is any.
	* Some controls may only be available when the line is open.
	* @param control the type of the requested control
	* @return a control of the specified type
	* @throws IllegalArgumentException if a control of the specified type
	* is not supported
	* @see #getControls
	* @see #isControlSupported(Control.Type control)
	*/
	@:overload @:public @:public @:public override public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	/**
	* Check if a line is open
	* 
	* @return <code>true</code> if line is open
	*/
	@:overload @:public override public function isOpen() : Bool;
	
	/**
	* Adds a listener to this line.  Whenever the line's status changes, the
	* listener's <code>update()</code> method is called with a <code>LineEvent</code> object
	* that describes the change.
	* @param listener the object to add as a listener to this line
	* @see #removeLineListener
	* @see LineListener#update
	* @see LineEvent
	*/
	@:overload @:public @:public @:public override public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	/**
	* Removes the specified listener from this line's list of listeners.
	* @param listener listener to remove
	* @see #addLineListener
	*/
	@:overload @:public @:public @:public override public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	
}
