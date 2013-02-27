package sun.java2d.pipe;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferedOpCodes
{
	public static var DRAW_LINE(default, null) : Int;
	
	public static var DRAW_RECT(default, null) : Int;
	
	public static var DRAW_POLY(default, null) : Int;
	
	public static var DRAW_PIXEL(default, null) : Int;
	
	public static var DRAW_SCANLINES(default, null) : Int;
	
	public static var DRAW_PARALLELOGRAM(default, null) : Int;
	
	public static var DRAW_AAPARALLELOGRAM(default, null) : Int;
	
	public static var FILL_RECT(default, null) : Int;
	
	public static var FILL_SPANS(default, null) : Int;
	
	public static var FILL_PARALLELOGRAM(default, null) : Int;
	
	public static var FILL_AAPARALLELOGRAM(default, null) : Int;
	
	public static var COPY_AREA(default, null) : Int;
	
	public static var BLIT(default, null) : Int;
	
	public static var MASK_FILL(default, null) : Int;
	
	public static var MASK_BLIT(default, null) : Int;
	
	public static var SURFACE_TO_SW_BLIT(default, null) : Int;
	
	public static var DRAW_GLYPH_LIST(default, null) : Int;
	
	public static var SET_RECT_CLIP(default, null) : Int;
	
	public static var BEGIN_SHAPE_CLIP(default, null) : Int;
	
	public static var SET_SHAPE_CLIP_SPANS(default, null) : Int;
	
	public static var END_SHAPE_CLIP(default, null) : Int;
	
	public static var RESET_CLIP(default, null) : Int;
	
	public static var SET_ALPHA_COMPOSITE(default, null) : Int;
	
	public static var SET_XOR_COMPOSITE(default, null) : Int;
	
	public static var RESET_COMPOSITE(default, null) : Int;
	
	public static var SET_TRANSFORM(default, null) : Int;
	
	public static var RESET_TRANSFORM(default, null) : Int;
	
	public static var SET_SURFACES(default, null) : Int;
	
	public static var SET_SCRATCH_SURFACE(default, null) : Int;
	
	public static var FLUSH_SURFACE(default, null) : Int;
	
	public static var DISPOSE_SURFACE(default, null) : Int;
	
	public static var DISPOSE_CONFIG(default, null) : Int;
	
	public static var INVALIDATE_CONTEXT(default, null) : Int;
	
	public static var SYNC(default, null) : Int;
	
	public static var RESTORE_DEVICES(default, null) : Int;
	
	public static var SAVE_STATE(default, null) : Int;
	
	public static var RESTORE_STATE(default, null) : Int;
	
	public static var SWAP_BUFFERS(default, null) : Int;
	
	public static var NOOP(default, null) : Int;
	
	public static var RESET_PAINT(default, null) : Int;
	
	public static var SET_COLOR(default, null) : Int;
	
	public static var SET_GRADIENT_PAINT(default, null) : Int;
	
	public static var SET_LINEAR_GRADIENT_PAINT(default, null) : Int;
	
	public static var SET_RADIAL_GRADIENT_PAINT(default, null) : Int;
	
	public static var SET_TEXTURE_PAINT(default, null) : Int;
	
	public static var ENABLE_CONVOLVE_OP(default, null) : Int;
	
	public static var DISABLE_CONVOLVE_OP(default, null) : Int;
	
	public static var ENABLE_RESCALE_OP(default, null) : Int;
	
	public static var DISABLE_RESCALE_OP(default, null) : Int;
	
	public static var ENABLE_LOOKUP_OP(default, null) : Int;
	
	public static var DISABLE_LOOKUP_OP(default, null) : Int;
	
	
}
