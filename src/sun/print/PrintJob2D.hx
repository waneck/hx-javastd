package sun.print;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class PrintJob2D extends java.awt.PrintJob implements java.awt.print.Printable implements java.lang.Runnable
{
	@:overload @:public public function new(frame : java.awt.Frame, doctitle : String, props : java.util.Properties) : Void;
	
	@:overload @:public public function new(frame : java.awt.Frame, doctitle : String, jobAttributes : java.awt.JobAttributes, pageAttributes : java.awt.PageAttributes) : Void;
	
	@:overload @:public public function printDialog() : Bool;
	
	/**
	* Gets a Graphics object that will draw to the next page.
	* The page is sent to the printer when the graphics
	* object is disposed.  This graphics object will also implement
	* the PrintGraphics interface.
	* @see PrintGraphics
	*/
	@:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	/**
	* Returns the dimensions of the page in pixels.
	* The resolution of the page is chosen so that it
	* is similar to the screen resolution.
	* Except (since 1.3) when the application specifies a resolution.
	* In that case it it scaled accordingly.
	*/
	@:overload @:public override public function getPageDimension() : java.awt.Dimension;
	
	/**
	* Returns the resolution of the page in pixels per inch.
	* Note that this doesn't have to correspond to the physical
	* resolution of the printer.
	*/
	@:overload @:public override public function getPageResolution() : Int;
	
	/**
	* Returns true if the last page will be printed first.
	*/
	@:overload @:public override public function lastPageFirst() : Bool;
	
	/**
	* Ends the print job and does any necessary cleanup.
	*/
	@:overload @:public @:synchronized override public function end() : Void;
	
	/**
	* Ends this print job once it is no longer referenced.
	* @see #end
	*/
	@:overload @:public override public function finalize() : Void;
	
	/**
	* Prints the page at the specified index into the specified
	* {@link Graphics} context in the specified
	* format.  A <code>PrinterJob</code> calls the
	* <code>Printable</code> interface to request that a page be
	* rendered into the context specified by
	* <code>graphics</code>.  The format of the page to be drawn is
	* specified by <code>pageFormat</code>.  The zero based index
	* of the requested page is specified by <code>pageIndex</code>.
	* If the requested page does not exist then this method returns
	* NO_SUCH_PAGE; otherwise PAGE_EXISTS is returned.
	* The <code>Graphics</code> class or subclass implements the
	* {@link PrinterGraphics} interface to provide additional
	* information.  If the <code>Printable</code> object
	* aborts the print job then it throws a {@link PrinterException}.
	* @param graphics the context into which the page is drawn
	* @param pageFormat the size and orientation of the page being drawn
	* @param pageIndex the zero based index of the page to be drawn
	* @return PAGE_EXISTS if the page is rendered successfully
	*         or NO_SUCH_PAGE if <code>pageIndex</code> specifies a
	*         non-existent page.
	* @exception java.awt.print.PrinterException
	*         thrown when the print job is terminated.
	*/
	@:overload @:public public function print(graphics : java.awt.Graphics, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	@:overload @:public public function run() : Void;
	
	@:overload @:public @:static public static function mapMedia(mType : MediaType) : javax.print.attribute.standard.MediaSizeName;
	
	@:overload @:public @:static public static function unMapMedia(mSize : javax.print.attribute.standard.MediaSizeName) : MediaType;
	
	
}
@:native('sun$print$PrintJob2D$MessageQ') @:internal extern class PrintJob2D_MessageQ
{
	
}
