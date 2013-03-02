package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2005, Oracle and/or its affiliates. All rights reserved.
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
* A typesafe enumeration of colors that can be fetched from a style.
* <p>
* Each <code>SynthStyle</code> has a set of <code>ColorType</code>s that
* are accessed by way of the
* {@link SynthStyle#getColor(SynthContext, ColorType)} method.
* <code>SynthStyle</code>'s <code>installDefaults</code> will install
* the <code>FOREGROUND</code> color
* as the foreground of
* the Component, and the <code>BACKGROUND</code> color to the background of
* the component (assuming that you have not explicitly specified a
* foreground and background color). Some components
* support more color based properties, for
* example <code>JList</code> has the property
* <code>selectionForeground</code> which will be mapped to
* <code>FOREGROUND</code> with a component state of
* <code>SynthConstants.SELECTED</code>.
* <p>
* The following example shows a custom <code>SynthStyle</code> that returns
* a red Color for the <code>DISABLED</code> state, otherwise a black color.
* <pre>
* class MyStyle extends SynthStyle {
*     private Color disabledColor = new ColorUIResource(Color.RED);
*     private Color color = new ColorUIResource(Color.BLACK);
*     protected Color getColorForState(SynthContext context, ColorType type){
*         if (context.getComponentState() == SynthConstants.DISABLED) {
*             return disabledColor;
*         }
*         return color;
*     }
* }
* </pre>
*
* @since 1.5
* @author Scott Violet
*/
@:require(java5) extern class ColorType
{
	/**
	* ColorType for the foreground of a region.
	*/
	public static var FOREGROUND(default, null) : javax.swing.plaf.synth.ColorType;
	
	/**
	* ColorType for the background of a region.
	*/
	public static var BACKGROUND(default, null) : javax.swing.plaf.synth.ColorType;
	
	/**
	* ColorType for the foreground of a region.
	*/
	public static var TEXT_FOREGROUND(default, null) : javax.swing.plaf.synth.ColorType;
	
	/**
	* ColorType for the background of a region.
	*/
	public static var TEXT_BACKGROUND(default, null) : javax.swing.plaf.synth.ColorType;
	
	/**
	* ColorType for the focus.
	*/
	public static var FOCUS(default, null) : javax.swing.plaf.synth.ColorType;
	
	/**
	* Maximum number of <code>ColorType</code>s.
	*/
	public static var MAX_COUNT(default, null) : Int;
	
	/**
	* Creates a new ColorType with the specified description.
	*
	* @param description String description of the ColorType.
	*/
	@:overload private function new(description : String) : Void;
	
	/**
	* Returns a unique id, as an integer, for this ColorType.
	*
	* @return a unique id, as an integer, for this ColorType.
	*/
	@:overload @:final public function getID() : Int;
	
	/**
	* Returns the textual description of this <code>ColorType</code>.
	* This is the same value that the <code>ColorType</code> was created
	* with.
	*
	* @return the description of the string
	*/
	@:overload public function toString() : String;
	
	
}
