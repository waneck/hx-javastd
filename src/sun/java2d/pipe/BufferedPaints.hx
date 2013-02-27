package sun.java2d.pipe;
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
extern class BufferedPaints
{
	/**
	* The maximum number of gradient "stops" supported by our native
	* fragment shader implementations.
	*
	* This value has been empirically determined and capped to allow
	* our native shaders to run on all shader-level graphics hardware,
	* even on the older, more limited GPUs.  Even the oldest Nvidia
	* hardware could handle 16, or even 32 fractions without any problem.
	* But the first-generation boards from ATI would fall back into
	* software mode (which is unusably slow) for values larger than 12;
	* it appears that those boards do not have enough native registers
	* to support the number of array accesses required by our gradient
	* shaders.  So for now we will cap this value at 12, but we can
	* re-evaluate this in the future as hardware becomes more capable.
	*/
	public static var MULTI_MAX_FRACTIONS(default, null) : Int;
	
	/**
	* Helper function to convert a color component in sRGB space to
	* linear RGB space.  Copied directly from the
	* MultipleGradientPaintContext class.
	*/
	@:overload public static function convertSRGBtoLinearRGB(color : Int) : Int;
	
	
}
