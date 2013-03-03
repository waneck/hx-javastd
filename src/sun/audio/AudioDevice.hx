package sun.audio;
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
extern class AudioDevice
{
	/**
	* The default audio player. This audio player is initialized
	* automatically.
	*/
	@:public @:static @:final public static var device(default, null) : sun.audio.AudioDevice;
	
	/**
	*  Open an audio channel.
	*/
	@:overload @:public @:synchronized public function openChannel(_in : java.io.InputStream) : Void;
	
	/**
	*  Close an audio channel.
	*/
	@:overload @:public @:synchronized public function closeChannel(_in : java.io.InputStream) : Void;
	
	/**
	* Open the device (done automatically)
	*/
	@:overload @:public @:synchronized public function open() : Void;
	
	/**
	* Close the device (done automatically)
	*/
	@:overload @:public @:synchronized public function close() : Void;
	
	/**
	* Play open audio stream(s)
	*/
	@:overload @:public public function play() : Void;
	
	/**
	* Close streams
	*/
	@:overload @:public @:synchronized public function closeStreams() : Void;
	
	/**
	* Number of channels currently open.
	*/
	@:overload @:public public function openChannels() : Int;
	
	
}
@:native('sun$audio$AudioDevice$Info') @:internal extern class AudioDevice_Info implements javax.sound.midi.MetaEventListener
{
	@:overload @:public public function meta(event : javax.sound.midi.MetaMessage) : Void;
	
	
}
