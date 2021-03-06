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
@:internal extern class Stream
{
	@:public @:static public static var STATE_UNCONNECTED : haxe.Int64;
	
	@:overload @:public @:static public static function checkNativeStreamState(value : haxe.Int64) : haxe.Int64;
	
	@:public @:static public static var FLAG_NOFLAGS : haxe.Int64;
	
	@:public @:static @:final public static var DEFAULT_DEVICE(default, null) : String;
	
	@:overload @:public @:native public function bytesInBuffer() : Int;
	
	
}
/**
* 
* This class encapsulates a pa_stream object and provides easier access to the
* native functions
* 
* 
* for more details on this see the pa_stream_* functions in the pulseaudio api
* docs
* 
*/
@:native('org$classpath$icedtea$pulseaudio$Stream$StateListener') extern interface Stream_StateListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$CorkListener') extern interface Stream_CorkListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$WriteListener') extern interface Stream_WriteListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$ReadListener') extern interface Stream_ReadListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$OverflowListener') extern interface Stream_OverflowListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$UnderflowListener') extern interface Stream_UnderflowListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$PlaybackStartedListener') extern interface Stream_PlaybackStartedListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$LatencyUpdateListener') extern interface Stream_LatencyUpdateListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$MovedListener') extern interface Stream_MovedListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$UpdateTimingInfoListener') extern interface Stream_UpdateTimingInfoListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$SuspendedListener') extern interface Stream_SuspendedListener
{
	@:overload @:public public function update() : Void;
	
	
}
@:native('org$classpath$icedtea$pulseaudio$Stream$Format') extern enum Stream_Format
{
	PA_SAMPLE_U8;
	PA_SAMPLE_ULAW;
	PA_SAMPLE_ALAW;
	PA_SAMPLE_S16LE;
	PA_SAMPLE_S16BE;
	PA_SAMPLE_FLOAT32LE;
	PA_SAMPLE_FLOAT32BE;
	PA_SAMPLE_S32LE;
	PA_SAMPLE_S32BE;
	
}

