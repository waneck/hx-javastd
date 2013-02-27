package javax.sound.sampled.spi;
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
extern class FormatConversionProvider
{
	/**
	* Obtains the set of source format encodings from which format
	* conversion services are provided by this provider.
	* @return array of source format encodings. If for some reason provider
	* does not provide any conversion services, an array of length 0 is
	* returned.
	*/
	@:overload @:abstract public function getSourceEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	* Obtains the set of target format encodings to which format
	* conversion services are provided by this provider.
	* @return array of target format encodings. If for some reason provider
	* does not provide any conversion services, an array of length 0 is
	* returned.
	*/
	@:overload @:abstract public function getTargetEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	* Indicates whether the format converter supports conversion from the
	* specified source format encoding.
	* @param sourceEncoding the source format encoding for which support is queried
	* @return <code>true</code> if the encoding is supported, otherwise <code>false</code>
	*/
	@:overload public function isSourceEncodingSupported(sourceEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding) : Bool;
	
	/**
	* Indicates whether the format converter supports conversion to the
	* specified target format encoding.
	* @param targetEncoding the target format encoding for which support is queried
	* @return <code>true</code> if the encoding is supported, otherwise <code>false</code>
	*/
	@:overload public function isTargetEncodingSupported(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding) : Bool;
	
	/**
	* Obtains the set of target format encodings supported by the format converter
	* given a particular source format.
	* If no target format encodings are supported for this source format,
	* an array of length 0 is returned.
	* @return array of supported target format encodings.
	*/
	@:overload @:abstract public function getTargetEncodings(sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	* Indicates whether the format converter supports conversion to a particular encoding
	* from a particular format.
	* @param targetEncoding desired encoding of the outgoing data
	* @param sourceFormat format of the incoming data
	* @return <code>true</code> if the conversion is supported, otherwise <code>false</code>
	*/
	@:overload public function isConversionSupported(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	/**
	* Obtains the set of target formats with the encoding specified
	* supported by the format converter
	* If no target formats with the specified encoding are supported
	* for this source format, an array of length 0 is returned.
	* @return array of supported target formats.
	*/
	@:overload @:abstract public function getTargetFormats(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat>;
	
	/**
	* Indicates whether the format converter supports conversion to one
	* particular format from another.
	* @param targetFormat desired format of outgoing data
	* @param sourceFormat format of the incoming data
	* @return <code>true</code> if the conversion is supported, otherwise <code>false</code>
	*/
	@:overload public function isConversionSupported(targetFormat : javax.sound.sampled.AudioFormat, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	/**
	* Obtains an audio input stream with the specified encoding from the given audio
	* input stream.
	* @param targetEncoding desired encoding of the stream after processing
	* @param sourceStream stream from which data to be processed should be read
	* @return stream from which processed data with the specified target encoding may be read
	* @throws IllegalArgumentException if the format combination supplied is
	* not supported.
	*/
	@:overload @:abstract public function getAudioInputStream(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains an audio input stream with the specified format from the given audio
	* input stream.
	* @param targetFormat desired data format of the stream after processing
	* @param sourceStream stream from which data to be processed should be read
	* @return stream from which processed data with the specified format may be read
	* @throws IllegalArgumentException if the format combination supplied is
	* not supported.
	*/
	@:overload @:abstract public function getAudioInputStream(targetFormat : javax.sound.sampled.AudioFormat, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	
}
