package com.sun.media.sound;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AudioFloatConverter
{
	@:overload @:public @:static public static function getConverter(format : javax.sound.sampled.AudioFormat) : com.sun.media.sound.AudioFloatConverter;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public @:abstract public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, out_buff : java.NativeArray<Single>, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, out_buff : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	@:overload @:public @:abstract public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toByteArray(in_buff : java.NativeArray<Single>, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toByteArray(in_buff : java.NativeArray<Single>, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toByteArray(in_buff : java.NativeArray<Single>, out_buff : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* LSB Filter, used filter least significant byte in samples arrays.
*
* Is used filter out data in lsb byte when SampleSizeInBits is not
* dividable by 8.
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatLSBFilter') @:internal extern class AudioFloatConverter_AudioFloatLSBFilter extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public public function new(converter : com.sun.media.sound.AudioFloatConverter, format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	
}
/***************************************************************************
*
* 64 bit float, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion64L') @:internal extern class AudioFloatConverter_AudioFloatConversion64L extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion64B') @:internal extern class AudioFloatConverter_AudioFloatConversion64B extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 32 bit float, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32L') @:internal extern class AudioFloatConverter_AudioFloatConversion32L extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32B') @:internal extern class AudioFloatConverter_AudioFloatConversion32B extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 8 bit signed/unsigned
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion8S') @:internal extern class AudioFloatConverter_AudioFloatConversion8S extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion8U') @:internal extern class AudioFloatConverter_AudioFloatConversion8U extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 16 bit signed/unsigned, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion16SL') @:internal extern class AudioFloatConverter_AudioFloatConversion16SL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion16SB') @:internal extern class AudioFloatConverter_AudioFloatConversion16SB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion16UL') @:internal extern class AudioFloatConverter_AudioFloatConversion16UL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion16UB') @:internal extern class AudioFloatConverter_AudioFloatConversion16UB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 24 bit signed/unsigned, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion24SL') @:internal extern class AudioFloatConverter_AudioFloatConversion24SL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion24SB') @:internal extern class AudioFloatConverter_AudioFloatConversion24SB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion24UL') @:internal extern class AudioFloatConverter_AudioFloatConversion24UL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion24UB') @:internal extern class AudioFloatConverter_AudioFloatConversion24UB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 32 bit signed/unsigned, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32SL') @:internal extern class AudioFloatConverter_AudioFloatConversion32SL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32SB') @:internal extern class AudioFloatConverter_AudioFloatConversion32SB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32UL') @:internal extern class AudioFloatConverter_AudioFloatConversion32UL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32UB') @:internal extern class AudioFloatConverter_AudioFloatConversion32UB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/***************************************************************************
*
* 32+ bit signed/unsigned, little/big-endian
*
**************************************************************************/
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32xSL') @:internal extern class AudioFloatConverter_AudioFloatConversion32xSL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public public function new(xbytes : Int) : Void;
	
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32xSB') @:internal extern class AudioFloatConverter_AudioFloatConversion32xSB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public public function new(xbytes : Int) : Void;
	
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32xUL') @:internal extern class AudioFloatConverter_AudioFloatConversion32xUL extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public public function new(xbytes : Int) : Void;
	
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$media$sound$AudioFloatConverter$AudioFloatConversion32xUB') @:internal extern class AudioFloatConverter_AudioFloatConversion32xUB extends com.sun.media.sound.AudioFloatConverter
{
	@:overload @:public public function new(xbytes : Int) : Void;
	
	@:overload @:public override public function toFloatArray(in_buff : java.NativeArray<java.StdTypes.Int8>, in_offset : Int, out_buff : java.NativeArray<Single>, out_offset : Int, out_len : Int) : java.NativeArray<Single>;
	
	@:overload @:public override public function toByteArray(in_buff : java.NativeArray<Single>, in_offset : Int, in_len : Int, out_buff : java.NativeArray<java.StdTypes.Int8>, out_offset : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
