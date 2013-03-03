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
* The <code>LineEvent</code> class encapsulates information that a line
* sends its listeners whenever the line opens, closes, starts, or stops.
* Each of these four state changes is represented by a corresponding
* type of event.  A listener receives the event as a parameter to its
* {@link LineListener#update update} method.  By querying the event,
* the listener can learn the type of event, the line responsible for
* the event, and how much data the line had processed when the event occurred.
*
* <p>Although this class implements Serializable, attempts to
* serialize a <code>LineEvent</code> object will fail.
*
* @author Kara Kytle
*
* @see Line
* @see LineListener#update
* @since 1.3
*
* @serial exclude
*/
@:require(java3) extern class LineEvent extends java.util.EventObject
{
	/**
	* Constructs a new event of the specified type, originating from the specified line.
	* @param line the source of this event
	* @param type the event type (<code>OPEN</code>, <code>CLOSE</code>, <code>START</code>, or <code>STOP</code>)
	* @param position the number of sample frames that the line had already processed when the event occurred,
	* or {@link AudioSystem#NOT_SPECIFIED}
	*
	* @throws IllegalArgumentException if <code>line</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(line : javax.sound.sampled.Line, type : javax.sound.sampled.LineEvent.LineEvent_Type, position : haxe.Int64) : Void;
	
	/**
	* Obtains the audio line that is the source of this event.
	* @return the line responsible for this event
	*/
	@:overload @:public @:final public function getLine() : javax.sound.sampled.Line;
	
	/**
	* Obtains the event's type.
	* @return this event's type ({@link Type#OPEN}, {@link Type#CLOSE},
	* {@link Type#START}, or {@link Type#STOP})
	*/
	@:overload @:public @:final public function getType() : javax.sound.sampled.LineEvent.LineEvent_Type;
	
	/*
	* $$kk: 04.20.99: note to myself: should make sure our implementation is consistent with this.
	* which is a reasonable definition....
	*/
	@:overload @:public @:final public function getFramePosition() : haxe.Int64;
	
	/**
	* Obtains a string representation of the event.  The contents of the string may vary
	* between implementations of Java Sound.
	* @return a string describing the event.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
/**
* The LineEvent.Type inner class identifies what kind of event occurred on a line.
* Static instances are provided for the common types (OPEN, CLOSE, START, and STOP).
*
* @see LineEvent#getType()
*/
@:native('javax$sound$sampled$LineEvent$Type') extern class LineEvent_Type
{
	/**
	* Constructs a new event type.
	* @param name name of the type
	*/
	@:overload @:protected private function new(name : String) : Void;
	
	/**
	* Indicates whether the specified object is equal to this event type,
	* returning <code>true</code> if the objects are identical.
	* @param obj the reference object with which to compare
	* @return <code>true</code> if this event type is the same as
	* <code>obj</code>; <code>false</code> otherwise
	*/
	@:overload @:public @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashcode method.
	*/
	@:overload @:public @:final public function hashCode() : Int;
	
	/**
	* Returns the type name as the string representation.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* A type of event that is sent when a line opens, reserving system
	* resources for itself.
	* @see #CLOSE
	* @see Line#open
	*/
	@:public @:static @:final public static var OPEN(default, null) : javax.sound.sampled.LineEvent.LineEvent_Type;
	
	/**
	* A type of event that is sent when a line closes, freeing the system
	* resources it had obtained when it was opened.
	* @see #OPEN
	* @see Line#close
	*/
	@:public @:static @:final public static var CLOSE(default, null) : javax.sound.sampled.LineEvent.LineEvent_Type;
	
	/**
	* A type of event that is sent when a line begins to engage in active
	* input or output of audio data in response to a
	* {@link DataLine#start start} request.
	* @see #STOP
	* @see DataLine#start
	*/
	@:public @:static @:final public static var START(default, null) : javax.sound.sampled.LineEvent.LineEvent_Type;
	
	/**
	* A type of event that is sent when a line ceases active input or output
	* of audio data in response to a {@link DataLine#stop stop} request,
	* or because the end of media has been reached.
	* @see #START
	* @see DataLine#stop
	*/
	@:public @:static @:final public static var STOP(default, null) : javax.sound.sampled.LineEvent.LineEvent_Type;
	
	
}
