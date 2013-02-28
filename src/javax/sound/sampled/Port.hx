package javax.sound.sampled;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Ports are simple lines for input or output of audio to or from audio devices.
* Common examples of ports that act as source lines (mixer inputs) include the microphone,
* line input, and CD-ROM drive.  Ports that act as target lines (mixer outputs) include the
* speaker, headphone, and line output.  You can access port using a <code>{@link Port.Info}</code>
* object.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) extern interface Port extends javax.sound.sampled.Line
{
	
}
/**
* The <code>Port.Info</code> class extends <code>{@link Line.Info}</code>
* with additional information specific to ports, including the port's name
* and whether it is a source or a target for its mixer.
* By definition, a port acts as either a source or a target to its mixer,
* but not both.  (Audio input ports are sources; audio output ports are targets.)
* <p>
* To learn what ports are available, you can retrieve port info objects through the
* <code>{@link Mixer#getSourceLineInfo getSourceLineInfo}</code> and
* <code>{@link Mixer#getTargetLineInfo getTargetLineInfo}</code>
* methods of the <code>Mixer</code> interface.  Instances of the
* <code>Port.Info</code> class may also be constructed and used to obtain
* lines matching the parameters specified in the <code>Port.Info</code> object.
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) @:native('javax$sound$sampled$Port$Info') extern class Port_Info extends javax.sound.sampled.Line.Line_Info
{
	/**
	* A type of port that gets audio from a built-in microphone or a microphone jack.
	*/
	public static var MICROPHONE(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* A type of port that gets audio from a line-level audio input jack.
	*/
	public static var LINE_IN(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* A type of port that gets audio from a CD-ROM drive.
	*/
	public static var COMPACT_DISC(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* A type of port that sends audio to a built-in speaker or a speaker jack.
	*/
	public static var SPEAKER(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* A type of port that sends audio to a headphone jack.
	*/
	public static var HEADPHONE(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* A type of port that sends audio to a line-level audio output jack.
	*/
	public static var LINE_OUT(default, null) : javax.sound.sampled.Line.Line_Info;
	
	/**
	* Constructs a port's info object from the information given.
	* This constructor is typically used by an implementation
	* of Java Sound to describe a supported line.
	*
	* @param lineClass the class of the port described by the info object.
	* @param name the string that names the port
	* @param isSource <code>true</code> if the port is a source port (such
	* as a microphone), <code>false</code> if the port is a target port
	* (such as a speaker).
	*/
	@:overload public function new(lineClass : Class<Dynamic>, name : String, isSource : Bool) : Void;
	
	/**
	* Obtains the name of the port.
	* @return the string that names the port
	*/
	@:overload public function getName() : String;
	
	/**
	* Indicates whether the port is a source or a target for its mixer.
	* @return <code>true</code> if the port is a source port (such
	* as a microphone), <code>false</code> if the port is a target port
	* (such as a speaker).
	*/
	@:overload public function isSource() : Bool;
	
	/**
	* Indicates whether this info object specified matches this one.
	* To match, the match requirements of the superclass must be
	* met and the types must be equal.
	* @param info the info object for which the match is queried
	*/
	@:overload public function matches(info : javax.sound.sampled.Line.Line_Info) : Bool;
	
	/**
	* Finalizes the equals method
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashCode method
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Provides a <code>String</code> representation
	* of the port.
	* @return  a string that describes the port
	*/
	@:overload @:final override public function toString() : String;
	
	
}
