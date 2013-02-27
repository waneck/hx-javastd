package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKGraphicsUtils extends javax.swing.plaf.synth.SynthGraphicsUtils
{
	/**
	* @author Joshua Outwater
	*/
	@:overload override public function paintText(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, text : String, x : Int, y : Int, mnemonicIndex : Int) : Void;
	
	/**
	* Paints text at the specified location. This will not attempt to
	* render the text as html nor will it offset by the insets of the
	* component.
	*
	* @param ss SynthContext
	* @param g Graphics used to render string in.
	* @param text Text to render
	* @param bounds Bounds of the text to be drawn.
	* @param mnemonicIndex Index to draw string at.
	*/
	@:overload override public function paintText(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, text : String, bounds : java.awt.Rectangle, mnemonicIndex : Int) : Void;
	
	
}
