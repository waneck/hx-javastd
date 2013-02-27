package sun.print;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class PSPrinterJob extends sun.print.RasterPrinterJob
{
	/**
	* Passed to the <code>setFillMode</code>
	* method this value forces fills to be
	* done using the even-odd fill rule.
	*/
	private static var FILL_EVEN_ODD(default, null) : Int;
	
	/**
	* Passed to the <code>setFillMode</code>
	* method this value forces fills to be
	* done using the non-zero winding rule.
	*/
	private static var FILL_WINDING(default, null) : Int;
	
	/* Constructors */
	@:overload public function new() : Void;
	
	/**
	* Presents the user a dialog for changing properties of the
	* print job interactively.
	* @returns false if the user cancels the dialog and
	*          true otherwise.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload override public function printDialog() : Bool;
	
	/**
	* Invoked by the RasterPrinterJob super class
	* this method is called to mark the start of a
	* document.
	*/
	@:overload override private function startDoc() : Void;
	
	/**
	* Invoked if the application cancelled the printjob.
	*/
	@:overload override private function abortDoc() : Void;
	
	/**
	* Invoked by the RasterPrintJob super class
	* this method is called after that last page
	* has been imaged.
	*/
	@:overload override private function endDoc() : Void;
	
	/**
	* The RasterPrintJob super class calls this method
	* at the start of each page.
	*/
	@:overload override private function startPage(pageFormat : java.awt.print.PageFormat, painter : java.awt.print.Printable, index : Int, paperChanged : Bool) : Void;
	
	/**
	* The RastePrintJob super class calls this method
	* at the end of each page.
	*/
	@:overload override private function endPage(format : java.awt.print.PageFormat, painter : java.awt.print.Printable, index : Int) : Void;
	
	/**
	* Convert the 24 bit BGR image buffer represented by
	* <code>image</code> to PostScript. The image is drawn at
	* <code>(destX, destY)</code> in device coordinates.
	* The image is scaled into a square of size
	* specified by <code>destWidth</code> and
	* <code>destHeight</code>. The portion of the
	* source image copied into that square is specified
	* by <code>srcX</code>, <code>srcY</code>,
	* <code>srcWidth</code>, and srcHeight.
	*/
	@:overload private function drawImageBGR(bgrData : java.NativeArray<java.StdTypes.Int8>, destX : Single, destY : Single, destWidth : Single, destHeight : Single, srcX : Single, srcY : Single, srcWidth : Single, srcHeight : Single, srcBitMapWidth : Int, srcBitMapHeight : Int) : Void;
	
	/**
	* Prints the contents of the array of ints, 'data'
	* to the current page. The band is placed at the
	* location (x, y) in device coordinates on the
	* page. The width and height of the band is
	* specified by the caller. Currently the data
	* is 24 bits per pixel in BGR format.
	*/
	@:overload override private function printBand(bgrData : java.NativeArray<java.StdTypes.Int8>, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Examine the metrics captured by the
	* <code>PeekGraphics</code> instance and
	* if capable of directly converting this
	* print job to the printer's control language
	* or the native OS's graphics primitives, then
	* return a <code>PSPathGraphics</code> to perform
	* that conversion. If there is not an object
	* capable of the conversion then return
	* <code>null</code>. Returning <code>null</code>
	* causes the print job to be rasterized.
	*/
	@:overload override private function createPathGraphics(peekGraphics : sun.print.PeekGraphics, printerJob : java.awt.print.PrinterJob, painter : java.awt.print.Printable, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : java.awt.Graphics2D;
	
	/**
	* Intersect the gstate's current path with the
	* current clip and make the result the new clip.
	*/
	@:overload private function selectClipPath() : Void;
	
	@:overload private function setClip(clip : java.awt.Shape) : Void;
	
	@:overload private function setTransform(transform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Set the current PostScript font.
	* Taken from outFont in PSPrintStream.
	*/
	@:overload private function setFont(font : java.awt.Font) : Bool;
	
	/* return of 0 means unsupported. Other return indicates the number
	* of distinct PS fonts needed to draw this text. This saves us
	* doing this processing one extra time.
	*/
	@:overload private function platformFontCount(font : java.awt.Font, str : String) : Int;
	
	@:overload private function textOut(g : java.awt.Graphics, str : String, x : Single, y : Single, mLastFont : java.awt.Font, frc : java.awt.font.FontRenderContext, width : Single) : Bool;
	
	/**
	* Set the current path rule to be either
	* <code>FILL_EVEN_ODD</code> (using the
	* even-odd file rule) or <code>FILL_WINDING</code>
	* (using the non-zero winding rule.)
	*/
	@:overload private function setFillMode(fillRule : Int) : Void;
	
	/**
	* Set the printer's current color to be that
	* defined by <code>color</code>
	*/
	@:overload private function setColor(color : java.awt.Color) : Void;
	
	/**
	* Fill the current path using the current fill mode
	* and color.
	*/
	@:overload private function fillPath() : Void;
	
	/**
	* Called to mark the start of a new path.
	*/
	@:overload private function beginPath() : Void;
	
	/**
	* Close the current subpath by appending a straight
	* line from the current point to the subpath's
	* starting point.
	*/
	@:overload private function closeSubpath() : Void;
	
	/**
	* Generate PostScript to move the current pen
	* position to <code>(x, y)</code>.
	*/
	@:overload private function moveTo(x : Single, y : Single) : Void;
	
	/**
	* Generate PostScript to draw a line from the
	* current pen position to <code>(x, y)</code>.
	*/
	@:overload private function lineTo(x : Single, y : Single) : Void;
	
	/**
	* Add to the current path a bezier curve formed
	* by the current pen position and the method parameters
	* which are two control points and an ending
	* point.
	*/
	@:overload private function bezierTo(control1x : Single, control1y : Single, control2x : Single, control2y : Single, endX : Single, endY : Single) : Void;
	
	/**
	* Return the x coordinate of the pen in the
	* current path.
	*/
	@:overload private function getPenX() : Single;
	
	/**
	* Return the y coordinate of the pen in the
	* current path.
	*/
	@:overload private function getPenY() : Single;
	
	/**
	* Return the x resolution of the coordinates
	* to be rendered.
	*/
	@:overload override private function getXRes() : Float;
	
	/**
	* Return the y resolution of the coordinates
	* to be rendered.
	*/
	@:overload override private function getYRes() : Float;
	
	/**
	* For PostScript the origin is in the upper-left of the
	* paper not at the imageable area corner.
	*/
	@:overload override private function getPhysicalPrintableX(p : java.awt.print.Paper) : Float;
	
	/**
	* For PostScript the origin is in the upper-left of the
	* paper not at the imageable area corner.
	*/
	@:overload override private function getPhysicalPrintableY(p : java.awt.print.Paper) : Float;
	
	@:overload override private function getPhysicalPrintableWidth(p : java.awt.print.Paper) : Float;
	
	@:overload override private function getPhysicalPrintableHeight(p : java.awt.print.Paper) : Float;
	
	@:overload override private function getPhysicalPageWidth(p : java.awt.print.Paper) : Float;
	
	@:overload override private function getPhysicalPageHeight(p : java.awt.print.Paper) : Float;
	
	/**
	* Returns how many times each page in the book
	* should be consecutively printed by PrintJob.
	* If the printer makes copies itself then this
	* method should return 1.
	*/
	@:overload override private function getNoncollatedCopies() : Int;
	
	@:overload override private function getCollatedCopies() : Int;
	
	/*
	* Fill the path defined by <code>pathIter</code>
	* with the specified color.
	* The path is provided in current user space.
	*/
	@:overload private function deviceFill(pathIter : java.awt.geom.PathIterator, color : java.awt.Color, tx : java.awt.geom.AffineTransform, clip : java.awt.Shape) : Void;
	
	
}
@:native('sun$print$PSPrinterJob$PrinterOpener') @:internal extern class PSPrinterJob_PrinterOpener implements java.security.PrivilegedAction<Dynamic>
{
	@:overload public function run() : Dynamic;
	
	
}
@:native('sun$print$PSPrinterJob$PrinterSpooler') @:internal extern class PSPrinterJob_PrinterSpooler implements java.security.PrivilegedAction<Dynamic>
{
	@:overload public function run() : Dynamic;
	
	
}
/**
* A stack of GStates is maintained to model the printer's
* gstate stack. Each GState holds information about
* the current graphics attributes.
*/
@:native('sun$print$PSPrinterJob$GState') @:internal extern class PSPrinterJob_GState
{
	
}
/**
* PluginPrinter generates EPSF wrapped with a header and trailer
* comment. This conforms to the new requirements of Mozilla 1.7
* and FireFox 1.5 and later. Earlier versions of these browsers
* did not support plugin printing in the general sense (not just Java).
* A notable limitation of these browsers is that they handle plugins
* which would span page boundaries by scaling plugin content to fit on a
* single page. This means white space is left at the bottom of the
* previous page and its impossible to print these cases as they appear on
* the web page. This is contrast to how the same browsers behave on
* Windows where it renders as on-screen.
* Cases where the content fits on a single page do work fine, and they
* are the majority of cases.
* The scaling that the browser specifies to make the plugin content fit
* when it is larger than a single page can hold is non-uniform. It
* scales the axis in which the content is too large just enough to
* ensure it fits. For content which is extremely long this could lead
* to noticeable distortion. However that is probably rare enough that
* its not worth compensating for that here, but we can revisit that if
* needed, and compensate by making the scale for the other axis the
* same.
*/
@:native('sun$print$PSPrinterJob$PluginPrinter') extern class PSPrinterJob_PluginPrinter implements java.awt.print.Printable
{
	/**
	* This is called from the Java Plug-in to print an Applet's
	* contents as EPS to a postscript stream provided by the browser.
	* @param applet the applet component to print.
	* @param stream the print stream provided by the plug-in
	* @param x the x location of the applet panel in the browser window
	* @param y the y location of the applet panel in the browser window
	* @param w the width of the applet panel in the browser window
	* @param h the width of the applet panel in the browser window
	*/
	@:overload public function new(applet : java.awt.Component, stream : java.io.PrintStream, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function printPluginPSHeader() : Void;
	
	@:overload public function printPluginApplet() : Void;
	
	@:overload public function printPluginPSTrailer() : Void;
	
	@:overload public function printAll() : Void;
	
	@:overload public function print(g : java.awt.Graphics, pf : java.awt.print.PageFormat, pgIndex : Int) : Int;
	
	
}
/*
* This class can take an application-client supplied printable object
* and send the result to a stream.
* The application does not need to send any postscript to this stream
* unless it needs to specify a translation etc.
* It assumes that its importing application obeys all the conventions
* for importation of EPS. See Appendix H - Encapsulated Postscript File
* Format - of the Adobe Postscript Language Reference Manual, 2nd edition.
* This class could be used as the basis for exposing the ability to
* generate EPSF from 2D graphics as a StreamPrintService.
* In that case a MediaPrintableArea attribute could be used to
* communicate the bounding box.
*/
@:native('sun$print$PSPrinterJob$EPSPrinter') extern class PSPrinterJob_EPSPrinter implements java.awt.print.Pageable
{
	@:overload public function new(printable : java.awt.print.Printable, title : String, stream : java.io.PrintStream, x : Int, y : Int, wid : Int, hgt : Int) : Void;
	
	@:overload public function print() : Void;
	
	@:overload public function getNumberOfPages() : Int;
	
	@:overload public function getPageFormat(pgIndex : Int) : java.awt.print.PageFormat;
	
	@:overload public function getPrintable(pgIndex : Int) : java.awt.print.Printable;
	
	
}
