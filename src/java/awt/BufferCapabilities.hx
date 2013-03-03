package java.awt;
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
/**
* Capabilities and properties of buffers.
*
* @see java.awt.image.BufferStrategy#getCapabilities()
* @see GraphicsConfiguration#getBufferCapabilities
* @author Michael Martak
* @since 1.4
*/
@:require(java4) extern class BufferCapabilities implements java.lang.Cloneable
{
	/**
	* Creates a new object for specifying buffering capabilities
	* @param frontCaps the capabilities of the front buffer; cannot be
	* <code>null</code>
	* @param backCaps the capabilities of the back and intermediate buffers;
	* cannot be <code>null</code>
	* @param flipContents the contents of the back buffer after page-flipping,
	* <code>null</code> if page flipping is not used (implies blitting)
	* @exception IllegalArgumentException if frontCaps or backCaps are
	* <code>null</code>
	*/
	@:overload @:public public function new(frontCaps : java.awt.ImageCapabilities, backCaps : java.awt.ImageCapabilities, flipContents : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	/**
	* @return the image capabilities of the front (displayed) buffer
	*/
	@:overload @:public public function getFrontBufferCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* @return the image capabilities of all back buffers (intermediate buffers
	* are considered back buffers)
	*/
	@:overload @:public public function getBackBufferCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* @return whether or not the buffer strategy uses page flipping; a set of
	* buffers that uses page flipping
	* can swap the contents internally between the front buffer and one or
	* more back buffers by switching the video pointer (or by copying memory
	* internally).  A non-flipping set of
	* buffers uses blitting to copy the contents from one buffer to
	* another; when this is the case, <code>getFlipContents</code> returns
	* <code>null</code>
	*/
	@:overload @:public public function isPageFlipping() : Bool;
	
	/**
	* @return the resulting contents of the back buffer after page-flipping.
	* This value is <code>null</code> when the <code>isPageFlipping</code>
	* returns <code>false</code>, implying blitting.  It can be one of
	* <code>FlipContents.UNDEFINED</code>
	* (the assumed default), <code>FlipContents.BACKGROUND</code>,
	* <code>FlipContents.PRIOR</code>, or
	* <code>FlipContents.COPIED</code>.
	* @see #isPageFlipping
	* @see FlipContents#UNDEFINED
	* @see FlipContents#BACKGROUND
	* @see FlipContents#PRIOR
	* @see FlipContents#COPIED
	*/
	@:overload @:public public function getFlipContents() : java.awt.BufferCapabilities.BufferCapabilities_FlipContents;
	
	/**
	* @return whether page flipping is only available in full-screen mode.  If this
	* is <code>true</code>, full-screen exclusive mode is required for
	* page-flipping.
	* @see #isPageFlipping
	* @see GraphicsDevice#setFullScreenWindow
	*/
	@:overload @:public public function isFullScreenRequired() : Bool;
	
	/**
	* @return whether or not
	* page flipping can be performed using more than two buffers (one or more
	* intermediate buffers as well as the front and back buffer).
	* @see #isPageFlipping
	*/
	@:overload @:public public function isMultiBufferAvailable() : Bool;
	
	/**
	* @return a copy of this BufferCapabilities object.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
/**
* A type-safe enumeration of the possible back buffer contents after
* page-flipping
* @since 1.4
*/
@:require(java4) @:native('java$awt$BufferCapabilities$FlipContents') extern class BufferCapabilities_FlipContents extends java.awt.AttributeValue
{
	/**
	* When flip contents are <code>UNDEFINED</code>, the
	* contents of the back buffer are undefined after flipping.
	* @see #isPageFlipping
	* @see #getFlipContents
	* @see #BACKGROUND
	* @see #PRIOR
	* @see #COPIED
	*/
	@:public @:static @:final public static var UNDEFINED(default, null) : java.awt.BufferCapabilities.BufferCapabilities_FlipContents;
	
	/**
	* When flip contents are <code>BACKGROUND</code>, the
	* contents of the back buffer are cleared with the background color after
	* flipping.
	* @see #isPageFlipping
	* @see #getFlipContents
	* @see #UNDEFINED
	* @see #PRIOR
	* @see #COPIED
	*/
	@:public @:static @:final public static var BACKGROUND(default, null) : java.awt.BufferCapabilities.BufferCapabilities_FlipContents;
	
	/**
	* When flip contents are <code>PRIOR</code>, the
	* contents of the back buffer are the prior contents of the front buffer
	* (a true page flip).
	* @see #isPageFlipping
	* @see #getFlipContents
	* @see #UNDEFINED
	* @see #BACKGROUND
	* @see #COPIED
	*/
	@:public @:static @:final public static var PRIOR(default, null) : java.awt.BufferCapabilities.BufferCapabilities_FlipContents;
	
	/**
	* When flip contents are <code>COPIED</code>, the
	* contents of the back buffer are copied to the front buffer when
	* flipping.
	* @see #isPageFlipping
	* @see #getFlipContents
	* @see #UNDEFINED
	* @see #BACKGROUND
	* @see #PRIOR
	*/
	@:public @:static @:final public static var COPIED(default, null) : java.awt.BufferCapabilities.BufferCapabilities_FlipContents;
	
	
}
