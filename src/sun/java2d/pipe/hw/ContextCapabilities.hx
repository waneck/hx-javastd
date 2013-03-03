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
/**
* Represents a set of capabilities of a BufferedContext and associated
* AccelGraphicsConfig.
*
* @see AccelGraphicsConfig
*/
extern class ContextCapabilities
{
	/** Indicates that the context has no capabilities. */
	@:public @:static @:final public static var CAPS_EMPTY(default, null) : Int;
	
	/** Indicates that the context supports RT surfaces with alpha channel. */
	@:public @:static @:final public static var CAPS_RT_PLAIN_ALPHA(default, null) : Int;
	
	/** Indicates that the context supports RT textures with alpha channel. */
	@:public @:static @:final public static var CAPS_RT_TEXTURE_ALPHA(default, null) : Int;
	
	/** Indicates that the context supports opaque RT textures. */
	@:public @:static @:final public static var CAPS_RT_TEXTURE_OPAQUE(default, null) : Int;
	
	/** Indicates that the context supports multitexturing. */
	@:public @:static @:final public static var CAPS_MULTITEXTURE(default, null) : Int;
	
	/** Indicates that the context supports non-pow2 texture dimensions. */
	@:public @:static @:final public static var CAPS_TEXNONPOW2(default, null) : Int;
	
	/** Indicates that the context supports non-square textures. */
	@:public @:static @:final public static var CAPS_TEXNONSQUARE(default, null) : Int;
	
	/** Indicates that the context supports pixel shader 2.0 or better. */
	@:public @:static @:final public static var CAPS_PS20(default, null) : Int;
	
	/** Indicates that the context supports pixel shader 3.0 or better. */
	@:public @:static @:final public static var CAPS_PS30(default, null) : Int;
	
	/*
	*  Pipeline contexts should use this for defining pipeline-specific
	*  capabilities, for example:
	*    int CAPS_D3D_1 = (FIRST_PRIVATE_CAP << 0);
	*    int CAPS_D3D_2 = (FIRST_PRIVATE_CAP << 1);
	*/
	@:protected @:static @:final private static var FIRST_PRIVATE_CAP(default, null) : Int;
	
	@:protected @:final private var caps(default, null) : Int;
	
	@:protected @:final private var adapterId(default, null) : String;
	
	/**
	* Constructs a {@code ContextCapabilities} object.
	* @param caps an {@code int} representing the capabilities
	* @param a {@code String} representing the name of the adapter, or null,
	* in which case the adapterId will be set to "unknown adapter".
	*/
	@:overload @:protected private function new(caps : Int, adapterId : String) : Void;
	
	/**
	* Returns a string representing the name of the graphics adapter if such
	* could be determined. It is guaranteed to never return {@code null}.
	* @return string representing adapter id
	*/
	@:overload @:public public function getAdapterId() : String;
	
	/**
	* Returns an {@code int} with capabilities (OR-ed constants defined in
	* this class and its pipeline-specific subclasses).
	* @return capabilities as {@code int}
	*/
	@:overload @:public public function getCaps() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
