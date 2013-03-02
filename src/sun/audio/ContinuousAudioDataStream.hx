package sun.audio;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
* Create a continuous audio stream. This wraps a stream
* around an AudioData object, the stream is restarted
* at the beginning everytime the end is reached, thus
* creating continuous sound.<p>
* For example:
* <pre>
*   AudioData data = AudioData.getAudioData(url);
*   ContinuousAudioDataStream audiostream = new ContinuousAudioDataStream(data);
*   AudioPlayer.player.start(audiostream);
* </pre>
*
* @see AudioPlayer
* @see AudioData
* @author Arthur van Hoff
*/
extern class ContinuousAudioDataStream extends sun.audio.AudioDataStream
{
	/**
	* Create a continuous stream of audio.
	*/
	@:overload public function new(data : sun.audio.AudioData) : Void;
	
	@:overload public function read() : Int;
	
	@:overload public function read(ab : java.NativeArray<java.StdTypes.Int8>, i1 : Int, j : Int) : Int;
	
	
}
