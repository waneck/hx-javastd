package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NimbusIcon extends sun.swing.plaf.synth.SynthIcon
{
	@:overload override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Implements the standard Icon interface's paintIcon method as the standard
	* synth stub passes null for the context and this will cause us to not
	* paint any thing, so we override here so that we can paint the enabled
	* state if no synth context is available
	*/
	@:overload override public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload override public function getIconWidth(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload override public function getIconHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	
}
