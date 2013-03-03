package com.sun.media.sound;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class JDK13Services
{
	/** Set the period provider lists are cached.
	This method is only intended for testing.
	*/
	@:overload @:public @:static public static function setCachingPeriod(seconds : Int) : Void;
	
	/** Obtains a List containing installed instances of the
	providers for the requested service.
	The List of providers is cached for the period of time given by
	{@link #cachingPeriod cachingPeriod}. During this period, the same
	List instance is returned for the same type of provider. After this
	period, a new instance is constructed and returned. The returned
	List is immutable.
	@param serviceClass The type of providers requested. This should be one
	of AudioFileReader.class, AudioFileWriter.class,
	FormatConversionProvider.class, MixerProvider.class,
	MidiDeviceProvider.class, MidiFileReader.class, MidiFileWriter.class or
	SoundbankReader.class.
	@return A List of providers of the requested type. This List is
	immutable.
	*/
	@:overload @:public @:static @:synchronized public static function getProviders(serviceClass : Class<Dynamic>) : java.util.List<Dynamic>;
	
	/** Obtain the provider class name part of a default provider property.
	@param typeClass The type of the default provider property. This
	should be one of Receiver.class, Transmitter.class, Sequencer.class,
	Synthesizer.class, SourceDataLine.class, TargetDataLine.class,
	Clip.class or Port.class.
	@return The value of the provider class name part of the property
	(the part before the hash sign), if available. If the property is
	not set or the value has no provider class name part, null is returned.
	*/
	@:overload @:public @:static @:synchronized public static function getDefaultProviderClassName(typeClass : Class<Dynamic>) : String;
	
	/** Obtain the instance name part of a default provider property.
	@param typeClass The type of the default provider property. This
	should be one of Receiver.class, Transmitter.class, Sequencer.class,
	Synthesizer.class, SourceDataLine.class, TargetDataLine.class,
	Clip.class or Port.class.
	@return The value of the instance name part of the property (the
	part after the hash sign), if available. If the property is not set
	or the value has no instance name part, null is returned.
	*/
	@:overload @:public @:static @:synchronized public static function getDefaultInstanceName(typeClass : Class<Dynamic>) : String;
	
	
}
@:native('com$sun$media$sound$JDK13Services$ProviderCache') @:internal extern class JDK13Services_ProviderCache
{
	@:public public var lastUpdate : haxe.Int64;
	
	@:public public var providers : java.util.List<Dynamic>;
	
	
}
