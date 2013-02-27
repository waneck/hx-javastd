package sun.print;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RasterPrinterJob extends java.awt.print.PrinterJob
{
	/* Printer destination type. */
	private static var PRINTER(default, null) : Int;
	
	/* File destination type.  */
	private static var FILE(default, null) : Int;
	
	/* Stream destination type.  */
	private static var STREAM(default, null) : Int;
	
	/**
	* values obtained from System properties in static initialiser block
	*/
	public static var forcePDL : Bool;
	
	public static var forceRaster : Bool;
	
	public static var shapeTextProp : Bool;
	
	/**
	* The document to be printed. It is initialized to an
	* empty (zero pages) book.
	*/
	private var mDocument : java.awt.print.Pageable;
	
	/**
	* Printing cancellation flags
	*/
	private var performingPrinting : Bool;
	
	private var userCancelled : Bool;
	
	private var sidesAttr : javax.print.attribute.standard.Sides;
	
	private var destinationAttr : String;
	
	private var noJobSheet : Bool;
	
	private var mDestType : Int;
	
	private var mDestination : String;
	
	private var collateAttReq : Bool;
	
	/**
	* Device rotation flag, if it support 270, this is set to true;
	*/
	private var landscapeRotates270 : Bool;
	
	/**
	* attributes used by no-args page and print dialog and print method to
	* communicate state
	*/
	private var attributes : javax.print.attribute.PrintRequestAttributeSet;
	
	/**
	* Service for this job
	*/
	private var myService : javax.print.PrintService;
	
	/* Constructors */
	@:overload public function new() : Void;
	
	/**
	* Returns the resolution in dots per inch across the width
	* of the page.
	*/
	@:overload @:abstract private function getXRes() : Float;
	
	/**
	* Returns the resolution in dots per inch down the height
	* of the page.
	*/
	@:overload @:abstract private function getYRes() : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPrintableX(p : java.awt.print.Paper) : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPrintableY(p : java.awt.print.Paper) : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPrintableWidth(p : java.awt.print.Paper) : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPrintableHeight(p : java.awt.print.Paper) : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPageWidth(p : java.awt.print.Paper) : Float;
	
	/**
	* Must be obtained from the current printer.
	* Value is in device pixels.
	* Not adjusted for orientation of the paper.
	*/
	@:overload @:abstract private function getPhysicalPageHeight(p : java.awt.print.Paper) : Float;
	
	/**
	* Begin a new page.
	*/
	@:overload @:abstract private function startPage(format : java.awt.print.PageFormat, painter : java.awt.print.Printable, index : Int, paperChanged : Bool) : Void;
	
	/**
	* End a page.
	*/
	@:overload @:abstract private function endPage(format : java.awt.print.PageFormat, painter : java.awt.print.Printable, index : Int) : Void;
	
	/**
	* Prints the contents of the array of ints, 'data'
	* to the current page. The band is placed at the
	* location (x, y) in device coordinates on the
	* page. The width and height of the band is
	* specified by the caller.
	*/
	@:overload @:abstract private function printBand(data : java.NativeArray<java.StdTypes.Int8>, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* save graphics state of a PathGraphics for later redrawing
	* of part of page represented by the region in that state
	*/
	@:overload public function saveState(at : java.awt.geom.AffineTransform, clip : java.awt.Shape, region : java.awt.geom.Rectangle2D, sx : Float, sy : Float) : Void;
	
	/*
	* A convenience method which returns the default service
	* for 2D <code>PrinterJob</code>s.
	* May return null if there is no suitable default (although there
	* may still be 2D services available).
	* @return default 2D print service, or null.
	* @since     1.4
	*/
	@:require(java4) @:overload private static function lookupDefaultPrintService() : javax.print.PrintService;
	
	/**
	* Returns the service (printer) for this printer job.
	* Implementations of this class which do not support print services
	* may return null;
	* @return the service for this printer job.
	*
	*/
	@:overload override public function getPrintService() : javax.print.PrintService;
	
	/**
	* Associate this PrinterJob with a new PrintService.
	*
	* Throws <code>PrinterException</code> if the specified service
	* cannot support the <code>Pageable</code> and
	* <code>Printable</code> interfaces necessary to support 2D printing.
	* @param a print service which supports 2D printing.
	*
	* @throws PrinterException if the specified service does not support
	* 2D printing or no longer available.
	*/
	@:overload override public function setPrintService(service : javax.print.PrintService) : Void;
	
	@:overload private function updatePageAttributes(service : javax.print.PrintService, page : java.awt.print.PageFormat) : Void;
	
	/**
	* Display a dialog to the user allowing the modification of a
	* PageFormat instance.
	* The <code>page</code> argument is used to initialize controls
	* in the page setup dialog.
	* If the user cancels the dialog, then the method returns the
	* original <code>page</code> object unmodified.
	* If the user okays the dialog then the method returns a new
	* PageFormat object with the indicated changes.
	* In either case the original <code>page</code> object will
	* not be modified.
	* @param     page    the default PageFormat presented to the user
	*                    for modification
	* @return    the original <code>page</code> object if the dialog
	*            is cancelled, or a new PageFormat object containing
	*            the format indicated by the user if the dialog is
	*            acknowledged
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     1.2
	*/
	@:require(java2) @:overload override public function pageDialog(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* return a PageFormat corresponding to the updated attributes,
	* or null if the user cancelled the dialog.
	*/
	@:overload override public function pageDialog(attributes : javax.print.attribute.PrintRequestAttributeSet) : java.awt.print.PageFormat;
	
	/**
	* Presents the user a dialog for changing properties of the
	* print job interactively.
	* The services browsable here are determined by the type of
	* service currently installed.
	* If the application installed a StreamPrintService on this
	* PrinterJob, only the available StreamPrintService (factories) are
	* browsable.
	*
	* @param attributes to store changed properties.
	* @return false if the user cancels the dialog and true otherwise.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload override public function printDialog(attributes : javax.print.attribute.PrintRequestAttributeSet) : Bool;
	
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
	* The pages in the document to be printed by this PrinterJob
	* are drawn by the Printable object 'painter'. The PageFormat
	* for each page is the default page format.
	* @param Printable Called to render each page of the document.
	*/
	@:overload override public function setPrintable(painter : java.awt.print.Printable) : Void;
	
	/**
	* The pages in the document to be printed by this PrinterJob
	* are drawn by the Printable object 'painter'. The PageFormat
	* of each page is 'format'.
	* @param Printable Called to render each page of the document.
	* @param PageFormat The size and orientation of each page to
	*                   be printed.
	*/
	@:overload override public function setPrintable(painter : java.awt.print.Printable, format : java.awt.print.PageFormat) : Void;
	
	/**
	* The pages in the document to be printed are held by the
	* Pageable instance 'document'. 'document' will be queried
	* for the number of pages as well as the PageFormat and
	* Printable for each page.
	* @param Pageable The document to be printed. It may not be null.
	* @exception NullPointerException the Pageable passed in was null.
	* @see PageFormat
	* @see Printable
	*/
	@:overload override public function setPageable(document : java.awt.print.Pageable) : Void;
	
	@:overload private function initPrinter() : Void;
	
	@:overload private function isSupportedValue(attrval : javax.print.attribute.Attribute, attrset : javax.print.attribute.PrintRequestAttributeSet) : Bool;
	
	/* subclasses may need to pull extra information out of the attribute set
	* They can override this method & call super.setAttributes()
	*/
	@:overload private function setAttributes(attributes : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	/*
	* Services we don't recognize as built-in services can't be
	* implemented as subclasses of PrinterJob, therefore we create
	* a DocPrintJob from their service and pass a Doc representing
	* the application's printjob
	*/
	@:overload private function spoolToService(psvc : javax.print.PrintService, attributes : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	/**
	* Prints a set of pages.
	* @exception java.awt.print.PrinterException an error in the print system
	*                                          caused the job to be aborted
	* @see java.awt.print.Book
	* @see java.awt.print.Pageable
	* @see java.awt.print.Printable
	*/
	@:overload override public function print() : Void;
	
	public static var debugPrint : Bool;
	
	@:overload private function debug_println(str : String) : Void;
	
	@:overload override public function print(attributes : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	/**
	* updates a Paper object to reflect the current printer's selected
	* paper size and imageable area for that paper size.
	* Default implementation copies settings from the original, applies
	* applies some validity checks, changes them only if they are
	* clearly unreasonable, then sets them into the new Paper.
	* Subclasses are expected to override this method to make more
	* informed decisons.
	*/
	@:overload private function validatePaper(origPaper : java.awt.print.Paper, newPaper : java.awt.print.Paper) : Void;
	
	/**
	* The passed in PageFormat will be copied and altered to describe
	* the default page size and orientation of the PrinterJob's
	* current printer.
	* Platform subclasses which can access the actual default paper size
	* for a printer may override this method.
	*/
	@:overload override public function defaultPage(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* The passed in PageFormat is cloned and altered to be usable on
	* the PrinterJob's current printer.
	*/
	@:overload override public function validatePage(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* Set the number of copies to be printed.
	*/
	@:overload override public function setCopies(copies : Int) : Void;
	
	/**
	* Get the number of copies to be printed.
	*/
	@:overload override public function getCopies() : Int;
	
	/* Used when executing a print job where an attribute set may
	* over ride API values.
	*/
	@:overload private function getCopiesInt() : Int;
	
	/**
	* Get the name of the printing user.
	* The caller must have security permission to read system properties.
	*/
	@:overload override public function getUserName() : String;
	
	/* Used when executing a print job where an attribute set may
	* over ride API values.
	*/
	@:overload private function getUserNameInt() : String;
	
	/**
	* Set the name of the document to be printed.
	* The document name can not be null.
	*/
	@:overload override public function setJobName(jobName : String) : Void;
	
	/**
	* Get the name of the document to be printed.
	*/
	@:overload override public function getJobName() : String;
	
	/* Used when executing a print job where an attribute set may
	* over ride API values.
	*/
	@:overload private function getJobNameInt() : String;
	
	/**
	* Set the range of pages from a Book to be printed.
	* Both 'firstPage' and 'lastPage' are zero based
	* page indices. If either parameter is less than
	* zero then the page range is set to be from the
	* first page to the last.
	*/
	@:overload private function setPageRange(firstPage : Int, lastPage : Int) : Void;
	
	/**
	* Return the zero based index of the first page to
	* be printed in this job.
	*/
	@:overload private function getFirstPage() : Int;
	
	/**
	* Return the zero based index of the last page to
	* be printed in this job.
	*/
	@:overload private function getLastPage() : Int;
	
	/**
	* Set whether copies should be collated or not.
	* Two collated copies of a three page document
	* print in this order: 1, 2, 3, 1, 2, 3 while
	* uncollated copies print in this order:
	* 1, 1, 2, 2, 3, 3.
	* This is set when request is using an attribute set.
	*/
	@:overload private function setCollated(collate : Bool) : Void;
	
	/**
	* Return true if collated copies will be printed as determined
	* in an attribute set.
	*/
	@:overload private function isCollated() : Bool;
	
	/**
	* Called by the print() method at the start of
	* a print job.
	*/
	@:overload @:abstract private function startDoc() : Void;
	
	/**
	* Called by the print() method at the end of
	* a print job.
	*/
	@:overload @:abstract private function endDoc() : Void;
	
	/* Called by cancelDoc */
	@:overload @:abstract private function abortDoc() : Void;
	
	@:overload private function cancelDoc() : Void;
	
	/**
	* Returns how many times the entire book should
	* be printed by the PrintJob. If the printer
	* itself supports collation then this method
	* should return 1 indicating that the entire
	* book need only be printed once and the copies
	* will be collated and made in the printer.
	*/
	@:overload private function getCollatedCopies() : Int;
	
	/**
	* Returns how many times each page in the book
	* should be consecutively printed by PrintJob.
	* If the printer makes copies itself then this
	* method should return 1.
	*/
	@:overload private function getNoncollatedCopies() : Int;
	
	/**
	* Print a page from the provided document.
	* @return int Printable.PAGE_EXISTS if the page existed and was drawn and
	*             Printable.NO_SUCH_PAGE if the page did not exist.
	* @see java.awt.print.Printable
	*/
	@:overload private function printPage(document : java.awt.print.Pageable, pageIndex : Int) : Int;
	
	/**
	* If a print job is in progress, print() has been
	* called but has not returned, then this signals
	* that the job should be cancelled and the next
	* chance. If there is no print job in progress then
	* this call does nothing.
	*/
	@:overload override public function cancel() : Void;
	
	/**
	* Returns true is a print job is ongoing but will
	* be cancelled and the next opportunity. false is
	* returned otherwise.
	*/
	@:overload override public function isCancelled() : Bool;
	
	/**
	* Return the Pageable describing the pages to be printed.
	*/
	@:overload private function getPageable() : java.awt.print.Pageable;
	
	/**
	* Examine the metrics captured by the
	* <code>PeekGraphics</code> instance and
	* if capable of directly converting this
	* print job to the printer's control language
	* or the native OS's graphics primitives, then
	* return a <code>PathGraphics</code> to perform
	* that conversion. If there is not an object
	* capable of the conversion then return
	* <code>null</code>. Returning <code>null</code>
	* causes the print job to be rasterized.
	*/
	@:overload private function createPathGraphics(graphics : sun.print.PeekGraphics, printerJob : java.awt.print.PrinterJob, painter : java.awt.print.Printable, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : java.awt.Graphics2D;
	
	/**
	* Create and return an object that will
	* gather and hold metrics about the print
	* job. This method is passed a <code>Graphics2D</code>
	* object that can be used as a proxy for the
	* object gathering the print job matrics. The
	* method is also supplied with the instance
	* controlling the print job, <code>printerJob</code>.
	*/
	@:overload private function createPeekGraphics(graphics : java.awt.Graphics2D, printerJob : java.awt.print.PrinterJob) : sun.print.PeekGraphics;
	
	/**
	* Configure the passed in Graphics2D so that
	* is contains the defined initial settings
	* for a print job. These settings are:
	*      color:  black.
	*      clip:   <as passed in>
	*/
	@:overload private function initPrinterGraphics(g : java.awt.Graphics2D, clip : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* User dialogs should disable "File" buttons if this returns false.
	*
	*/
	@:overload public function checkAllowedToPrintToFile() : Bool;
	
	/* On-screen drawString renders most control chars as the missing glyph
	* and have the non-zero advance of that glyph.
	* Exceptions are \t, \n and \r which are considered zero-width.
	* This is a utility method used by subclasses to remove them so we
	* don't have to worry about platform or font specific handling of them.
	*/
	@:overload private function removeControlChars(s : String) : String;
	
	
}
/**
* Class to keep state information for redrawing areas
* "region" is an area at as a high a resolution as possible.
* The redrawing code needs to look at sx, sy to calculate the scale
* to device resolution.
*/
@:native('sun$print$RasterPrinterJob$GraphicsState') @:internal extern class RasterPrinterJob_GraphicsState
{
	
}
