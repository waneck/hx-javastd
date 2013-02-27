package java.awt.image;
/*
* Copyright (c) 1995, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern interface ImageObserver
{
	/**
	* This method is called when information about an image which was
	* previously requested using an asynchronous interface becomes
	* available.  Asynchronous interfaces are method calls such as
	* getWidth(ImageObserver) and drawImage(img, x, y, ImageObserver)
	* which take an ImageObserver object as an argument.  Those methods
	* register the caller as interested either in information about
	* the overall image itself (in the case of getWidth(ImageObserver))
	* or about an output version of an image (in the case of the
	* drawImage(img, x, y, [w, h,] ImageObserver) call).
	*
	* <p>This method
	* should return true if further updates are needed or false if the
	* required information has been acquired.  The image which was being
	* tracked is passed in using the img argument.  Various constants
	* are combined to form the infoflags argument which indicates what
	* information about the image is now available.  The interpretation
	* of the x, y, width, and height arguments depends on the contents
	* of the infoflags argument.
	* <p>
	* The <code>infoflags</code> argument should be the bitwise inclusive
	* <b>OR</b> of the following flags: <code>WIDTH</code>,
	* <code>HEIGHT</code>, <code>PROPERTIES</code>, <code>SOMEBITS</code>,
	* <code>FRAMEBITS</code>, <code>ALLBITS</code>, <code>ERROR</code>,
	* <code>ABORT</code>.
	*
	* @param     img   the image being observed.
	* @param     infoflags   the bitwise inclusive OR of the following
	*               flags:  <code>WIDTH</code>, <code>HEIGHT</code>,
	*               <code>PROPERTIES</code>, <code>SOMEBITS</code>,
	*               <code>FRAMEBITS</code>, <code>ALLBITS</code>,
	*               <code>ERROR</code>, <code>ABORT</code>.
	* @param     x   the <i>x</i> coordinate.
	* @param     y   the <i>y</i> coordinate.
	* @param     width    the width.
	* @param     height   the height.
	* @return    <code>false</code> if the infoflags indicate that the
	*            image is completely loaded; <code>true</code> otherwise.
	*
	* @see #WIDTH
	* @see #HEIGHT
	* @see #PROPERTIES
	* @see #SOMEBITS
	* @see #FRAMEBITS
	* @see #ALLBITS
	* @see #ERROR
	* @see #ABORT
	* @see Image#getWidth
	* @see Image#getHeight
	* @see java.awt.Graphics#drawImage
	*/
	@:overload public function imageUpdate(img : java.awt.Image, infoflags : Int, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
