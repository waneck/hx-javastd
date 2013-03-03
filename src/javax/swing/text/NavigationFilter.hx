package javax.swing.text;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class NavigationFilter
{
	/**
	* Invoked prior to the Caret setting the dot. The default implementation
	* calls directly into the <code>FilterBypass</code> with the passed
	* in arguments. Subclasses may wish to conditionally
	* call super with a different location, or invoke the necessary method
	* on the <code>FilterBypass</code>
	*
	* @param fb FilterBypass that can be used to mutate caret position
	* @param dot the position >= 0
	* @param bias Bias to place the dot at
	*/
	@:overload @:public public function setDot(fb : javax.swing.text.NavigationFilter.NavigationFilter_FilterBypass, dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Invoked prior to the Caret moving the dot. The default implementation
	* calls directly into the <code>FilterBypass</code> with the passed
	* in arguments. Subclasses may wish to conditionally
	* call super with a different location, or invoke the necessary
	* methods on the <code>FilterBypass</code>.
	*
	* @param fb FilterBypass that can be used to mutate caret position
	* @param dot the position >= 0
	* @param bias Bias for new location
	*/
	@:overload @:public public function moveDot(fb : javax.swing.text.NavigationFilter.NavigationFilter_FilterBypass, dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Returns the next visual position to place the caret at from an
	* existing position. The default implementation simply forwards the
	* method to the root View. Subclasses may wish to further restrict the
	* location based on additional criteria.
	*
	* @param text JTextComponent containing text
	* @param pos Position used in determining next position
	* @param bias Bias used in determining next position
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This will be one of the following values:
	* <ul>
	* <li>SwingConstants.WEST
	* <li>SwingConstants.EAST
	* <li>SwingConstants.NORTH
	* <li>SwingConstants.SOUTH
	* </ul>
	* @param biasRet Used to return resulting Bias of next position
	* @return the location within the model that best represents the next
	*  location visual position
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code>
	*          doesn't have one of the legal values above
	*/
	@:overload @:public public function getNextVisualPositionFrom(text : javax.swing.text.JTextComponent, pos : Int, bias : javax.swing.text.Position.Position_Bias, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
/**
* Used as a way to circumvent calling back into the caret to
* position the cursor. Caret implementations that wish to support
* a NavigationFilter must provide an implementation that will
* not callback into the NavigationFilter.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$text$NavigationFilter$FilterBypass') extern class NavigationFilter_FilterBypass
{
	/**
	* Returns the Caret that is changing.
	*
	* @return Caret that is changing
	*/
	@:overload @:public @:abstract public function getCaret() : javax.swing.text.Caret;
	
	/**
	* Sets the caret location, bypassing the NavigationFilter.
	*
	* @param dot the position >= 0
	* @param bias Bias to place the dot at
	*/
	@:overload @:public @:abstract public function setDot(dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Moves the caret location, bypassing the NavigationFilter.
	*
	* @param dot the position >= 0
	* @param bias Bias for new location
	*/
	@:overload @:public @:abstract public function moveDot(dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	
}
