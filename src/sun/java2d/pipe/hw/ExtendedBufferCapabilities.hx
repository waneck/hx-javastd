package sun.java2d.pipe.hw;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ExtendedBufferCapabilities extends java.awt.BufferCapabilities
{
	/**
	* Creates an ExtendedBufferCapabilities object with front/back/flip caps
	* from the passed cap, and VSYNC_DEFAULT v-sync mode.
	*/
	@:overload public function new(caps : java.awt.BufferCapabilities) : Void;
	
	/**
	* Creates an ExtendedBufferCapabilities instance with front/back/flip caps
	* from the passed caps, and VSYNC_DEFAULT v-sync mode.
	*/
	@:overload public function new(front : java.awt.ImageCapabilities, back : java.awt.ImageCapabilities, flip : FlipContents) : Void;
	
	/**
	* Creates an ExtendedBufferCapabilities instance with front/back/flip caps
	* from the passed image/flip caps, and the v-sync type.
	*/
	@:overload public function new(front : java.awt.ImageCapabilities, back : java.awt.ImageCapabilities, flip : FlipContents, t : ExtendedBufferCapabilities_VSyncType) : Void;
	
	/**
	* Creates an ExtendedBufferCapabilities instance with front/back/flip caps
	* from the passed cap, and the passed v-sync mode.
	*/
	@:overload public function new(caps : java.awt.BufferCapabilities, t : ExtendedBufferCapabilities_VSyncType) : Void;
	
	/**
	* Creates an ExtendedBufferCapabilities instance with front/back/flip caps
	* from the object, and passed v-sync mode.
	*/
	@:overload public function derive(t : ExtendedBufferCapabilities_VSyncType) : ExtendedBufferCapabilities;
	
	/**
	* Returns the type of v-sync requested by this capabilities instance.
	*/
	@:overload public function getVSync() : ExtendedBufferCapabilities_VSyncType;
	
	@:overload @:final override public function isPageFlipping() : Bool;
	
	
}
/**
* Type of synchronization on vertical retrace.
*/
@:native('sun$java2d$pipe$hw$ExtendedBufferCapabilities$VSyncType') extern enum ExtendedBufferCapabilities_VSyncType
{
	/**
	* Use the default v-sync mode appropriate for given BufferStrategy
	* and situation.
	*/
	VSYNC_DEFAULT;
	/**
	* Synchronize flip on vertical retrace.
	*/
	VSYNC_ON;
	/**
	* Do not synchronize flip on vertical retrace.
	*/
	VSYNC_OFF;
	
}

