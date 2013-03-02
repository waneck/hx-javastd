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
extern class AudioPlayer extends java.lang.Thread
{
	/**
	* The default audio player. This audio player is initialized
	* automatically.
	*/
	public static var player(default, null) : sun.audio.AudioPlayer;
	
	/**
	* Start playing a stream. The stream will continue to play
	* until the stream runs out of data, or it is stopped.
	* @see AudioPlayer#stop
	*/
	@:overload @:synchronized public function start(_in : java.io.InputStream) : Void;
	
	/**
	* Stop playing a stream. The stream will stop playing,
	* nothing happens if the stream wasn't playing in the
	* first place.
	* @see AudioPlayer#start
	*/
	@:overload @:synchronized public function stop(_in : java.io.InputStream) : Void;
	
	/**
	* Main mixing loop. This is called automatically when the AudioPlayer
	* is created.
	*/
	@:overload override public function run() : Void;
	
	
}
