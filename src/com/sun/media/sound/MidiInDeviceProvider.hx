package com.sun.media.sound;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MidiInDeviceProvider extends com.sun.media.sound.AbstractMidiDeviceProvider
{
	/**
	* Required public no-arg constructor.
	*/
	@:overload @:public public function new() : Void;
	
	
}
/**
* Info class for MidiInDevices.  Adds the
* provider's Class to keep the provider class from being
* unloaded.  Otherwise, at least on JDK1.1.7 and 1.1.8,
* the provider class can be unloaded.  Then, then the provider
* is next invoked, the static block is executed again and a new
* instance of the device object is created.  Even though the
* previous instance may still exist and be open / in use / etc.,
* the new instance will not reflect that state...
*/
@:native('com$sun$media$sound$MidiInDeviceProvider$MidiInDeviceInfo') @:internal extern class MidiInDeviceProvider_MidiInDeviceInfo extends com.sun.media.sound.AbstractMidiDeviceProvider.AbstractMidiDeviceProvider_Info
{
	
}
