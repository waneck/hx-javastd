package java.awt.print;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PrinterJob
{
	/**
	* Creates and returns a <code>PrinterJob</code> which is initially
	* associated with the default printer.
	* If no printers are available on the system, a PrinterJob will still
	* be returned from this method, but <code>getPrintService()</code>
	* will return <code>null</code>, and calling
	* {@link #print() print} with this <code>PrinterJob</code> might
	* generate an exception.  Applications that need to determine if
	* there are suitable printers before creating a <code>PrinterJob</code>
	* should ensure that the array returned from
	* {@link #lookupPrintServices() lookupPrintServices} is not empty.
	* @return a new <code>PrinterJob</code>.
	*
	* @throws  SecurityException if a security manager exists and its
	*          {@link java.lang.SecurityManager#checkPrintJobAccess}
	*          method disallows this thread from creating a print job request
	*/
	@:overload @:public @:static public static function getPrinterJob() : java.awt.print.PrinterJob;
	
	/**
	* A convenience method which looks up 2D print services.
	* Services returned from this method may be installed on
	* <code>PrinterJob</code>s which support print services.
	* Calling this method is equivalent to calling
	* {@link javax.print.PrintServiceLookup#lookupPrintServices(
	* DocFlavor, AttributeSet)
	* <code>PrintServiceLookup.lookupPrintServices()</code>}
	* and specifying a Pageable DocFlavor.
	* @return a possibly empty array of 2D print services.
	* @since     1.4
	*/
	@:require(java4) @:overload @:public @:static public static function lookupPrintServices() : java.NativeArray<javax.print.PrintService>;
	
	/**
	* A convenience method which locates factories for stream print
	* services which can image 2D graphics.
	* Sample usage :
	* <pre>
	* FileOutputStream outstream;
	* StreamPrintService psPrinter;
	* String psMimeType = "application/postscript";
	* PrinterJob pj = PrinterJob.getPrinterJob();
	*
	* StreamPrintServiceFactory[] factories =
	*     PrinterJob.lookupStreamPrintServices(psMimeType);
	* if (factories.length > 0) {
	*     try {
	*         outstream = new File("out.ps");
	*         psPrinter =  factories[0].getPrintService(outstream);
	*         // psPrinter can now be set as the service on a PrinterJob
	*         pj.setPrintService(psPrinter)
	*     } catch (Exception e) {
	*         e.printStackTrace();
	*     }
	* }
	* </pre>
	* Services returned from this method may be installed on
	* <code>PrinterJob</code> instances which support print services.
	* Calling this method is equivalent to calling
	* {@link javax.print.StreamPrintServiceFactory#lookupStreamPrintServiceFactories(DocFlavor, String)
	* <code>StreamPrintServiceFactory.lookupStreamPrintServiceFactories()
	* </code>} and specifying a Pageable DocFlavor.
	*
	* @param mimeType the required output format, or null to mean any format.
	* @return a possibly empty array of 2D stream print service factories.
	* @since     1.4
	*/
	@:require(java4) @:overload @:public @:static public static function lookupStreamPrintServices(mimeType : String) : java.NativeArray<javax.print.StreamPrintServiceFactory>;
	
	/**
	* A <code>PrinterJob</code> object should be created using the
	* static {@link #getPrinterJob() <code>getPrinterJob</code>} method.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the service (printer) for this printer job.
	* Implementations of this class which do not support print services
	* may return null.  null will also be returned if no printers are
	* available.
	* @return the service for this printer job.
	* @see #setPrintService(PrintService)
	* @see #getPrinterJob()
	* @since     1.4
	*/
	@:require(java4) @:overload @:public public function getPrintService() : javax.print.PrintService;
	
	/**
	* Associate this PrinterJob with a new PrintService.
	* This method is overridden by subclasses which support
	* specifying a Print Service.
	*
	* Throws <code>PrinterException</code> if the specified service
	* cannot support the <code>Pageable</code> and
	* <code>Printable</code> interfaces necessary to support 2D printing.
	* @param service a print service that supports 2D printing
	* @exception PrinterException if the specified service does not support
	* 2D printing, or this PrinterJob class does not support
	* setting a 2D print service, or the specified service is
	* otherwise not a valid print service.
	* @see #getPrintService
	* @since     1.4
	*/
	@:require(java4) @:overload @:public public function setPrintService(service : javax.print.PrintService) : Void;
	
	/**
	* Calls <code>painter</code> to render the pages.  The pages in the
	* document to be printed by this
	* <code>PrinterJob</code> are rendered by the {@link Printable}
	* object, <code>painter</code>.  The {@link PageFormat} for each page
	* is the default page format.
	* @param painter the <code>Printable</code> that renders each page of
	* the document.
	*/
	@:overload @:public @:abstract public function setPrintable(painter : java.awt.print.Printable) : Void;
	
	/**
	* Calls <code>painter</code> to render the pages in the specified
	* <code>format</code>.  The pages in the document to be printed by
	* this <code>PrinterJob</code> are rendered by the
	* <code>Printable</code> object, <code>painter</code>. The
	* <code>PageFormat</code> of each page is <code>format</code>.
	* @param painter the <code>Printable</code> called to render
	*          each page of the document
	* @param format the size and orientation of each page to
	*                   be printed
	*/
	@:overload @:public @:abstract public function setPrintable(painter : java.awt.print.Printable, format : java.awt.print.PageFormat) : Void;
	
	/**
	* Queries <code>document</code> for the number of pages and
	* the <code>PageFormat</code> and <code>Printable</code> for each
	* page held in the <code>Pageable</code> instance,
	* <code>document</code>.
	* @param document the pages to be printed. It can not be
	* <code>null</code>.
	* @exception NullPointerException the <code>Pageable</code> passed in
	* was <code>null</code>.
	* @see PageFormat
	* @see Printable
	*/
	@:overload @:public @:abstract public function setPageable(document : java.awt.print.Pageable) : Void;
	
	/**
	* Presents a dialog to the user for changing the properties of
	* the print job.
	* This method will display a native dialog if a native print
	* service is selected, and user choice of printers will be restricted
	* to these native print services.
	* To present the cross platform print dialog for all services,
	* including native ones instead use
	* <code>printDialog(PrintRequestAttributeSet)</code>.
	* <p>
	* PrinterJob implementations which can use PrintService's will update
	* the PrintService for this PrinterJob to reflect the new service
	* selected by the user.
	* @return <code>true</code> if the user does not cancel the dialog;
	* <code>false</code> otherwise.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public @:abstract public function printDialog() : Bool;
	
	/**
	* A convenience method which displays a cross-platform print dialog
	* for all services which are capable of printing 2D graphics using the
	* <code>Pageable</code> interface. The selected printer when the
	* dialog is initially displayed will reflect the print service currently
	* attached to this print job.
	* If the user changes the print service, the PrinterJob will be
	* updated to reflect this, unless the user cancels the dialog.
	* As well as allowing the user to select the destination printer,
	* the user can also select values of various print request attributes.
	* <p>
	* The attributes parameter on input will reflect the applications
	* required initial selections in the user dialog. Attributes not
	* specified display using the default for the service. On return it
	* will reflect the user's choices. Selections may be updated by
	* the implementation to be consistent with the supported values
	* for the currently selected print service.
	* <p>
	* As the user scrolls to a new print service selection, the values
	* copied are based on the settings for the previous service, together
	* with any user changes. The values are not based on the original
	* settings supplied by the client.
	* <p>
	* With the exception of selected printer, the PrinterJob state is
	* not updated to reflect the user's changes.
	* For the selections to affect a printer job, the attributes must
	* be specified in the call to the
	* <code>print(PrintRequestAttributeSet)</code> method. If using
	* the Pageable interface, clients which intend to use media selected
	* by the user must create a PageFormat derived from the user's
	* selections.
	* If the user cancels the dialog, the attributes will not reflect
	* any changes made by the user.
	* @param attributes on input is application supplied attributes,
	* on output the contents are updated to reflect user choices.
	* This parameter may not be null.
	* @return <code>true</code> if the user does not cancel the dialog;
	* <code>false</code> otherwise.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @exception NullPointerException if <code>attributes</code> parameter
	* is null.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     1.4
	*
	*/
	@:require(java4) @:overload @:public public function printDialog(attributes : javax.print.attribute.PrintRequestAttributeSet) : Bool;
	
	/**
	* Displays a dialog that allows modification of a
	* <code>PageFormat</code> instance.
	* The <code>page</code> argument is used to initialize controls
	* in the page setup dialog.
	* If the user cancels the dialog then this method returns the
	* original <code>page</code> object unmodified.
	* If the user okays the dialog then this method returns a new
	* <code>PageFormat</code> object with the indicated changes.
	* In either case, the original <code>page</code> object is
	* not modified.
	* @param page the default <code>PageFormat</code> presented to the
	*                  user for modification
	* @return    the original <code>page</code> object if the dialog
	*            is cancelled; a new <code>PageFormat</code> object
	*            containing the format indicated by the user if the
	*            dialog is acknowledged.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function pageDialog(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* A convenience method which displays a cross-platform page setup dialog.
	* The choices available will reflect the print service currently
	* set on this PrinterJob.
	* <p>
	* The attributes parameter on input will reflect the client's
	* required initial selections in the user dialog. Attributes which are
	* not specified display using the default for the service. On return it
	* will reflect the user's choices. Selections may be updated by
	* the implementation to be consistent with the supported values
	* for the currently selected print service.
	* <p>
	* The return value will be a PageFormat equivalent to the
	* selections in the PrintRequestAttributeSet.
	* If the user cancels the dialog, the attributes will not reflect
	* any changes made by the user, and the return value will be null.
	* @param attributes on input is application supplied attributes,
	* on output the contents are updated to reflect user choices.
	* This parameter may not be null.
	* @return a page format if the user does not cancel the dialog;
	* <code>null</code> otherwise.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @exception NullPointerException if <code>attributes</code> parameter
	* is null.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     1.4
	*
	*/
	@:require(java4) @:overload @:public public function pageDialog(attributes : javax.print.attribute.PrintRequestAttributeSet) : java.awt.print.PageFormat;
	
	/**
	* Clones the <code>PageFormat</code> argument and alters the
	* clone to describe a default page size and orientation.
	* @param page the <code>PageFormat</code> to be cloned and altered
	* @return clone of <code>page</code>, altered to describe a default
	*                      <code>PageFormat</code>.
	*/
	@:overload @:public @:abstract public function defaultPage(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* Creates a new <code>PageFormat</code> instance and
	* sets it to a default size and orientation.
	* @return a <code>PageFormat</code> set to a default size and
	*          orientation.
	*/
	@:overload @:public public function defaultPage() : java.awt.print.PageFormat;
	
	/**
	* Calculates a <code>PageFormat</code> with values consistent with those
	* supported by the current <code>PrintService</code> for this job
	* (ie the value returned by <code>getPrintService()</code>) and media,
	* printable area and orientation contained in <code>attributes</code>.
	* <p>
	* Calling this method does not update the job.
	* It is useful for clients that have a set of attributes obtained from
	* <code>printDialog(PrintRequestAttributeSet attributes)</code>
	* and need a PageFormat to print a Pageable object.
	* @param attributes a set of printing attributes, for example obtained
	* from calling printDialog. If <code>attributes</code> is null a default
	* PageFormat is returned.
	* @return a <code>PageFormat</code> whose settings conform with
	* those of the current service and the specified attributes.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getPageFormat(attributes : javax.print.attribute.PrintRequestAttributeSet) : java.awt.print.PageFormat;
	
	/**
	* Returns the clone of <code>page</code> with its settings
	* adjusted to be compatible with the current printer of this
	* <code>PrinterJob</code>.  For example, the returned
	* <code>PageFormat</code> could have its imageable area
	* adjusted to fit within the physical area of the paper that
	* is used by the current printer.
	* @param page the <code>PageFormat</code> that is cloned and
	*          whose settings are changed to be compatible with
	*          the current printer
	* @return a <code>PageFormat</code> that is cloned from
	*          <code>page</code> and whose settings are changed
	*          to conform with this <code>PrinterJob</code>.
	*/
	@:overload @:public @:abstract public function validatePage(page : java.awt.print.PageFormat) : java.awt.print.PageFormat;
	
	/**
	* Prints a set of pages.
	* @exception PrinterException an error in the print system
	*            caused the job to be aborted.
	* @see Book
	* @see Pageable
	* @see Printable
	*/
	@:overload @:public @:abstract public function print() : Void;
	
	/**
	* Prints a set of pages using the settings in the attribute
	* set. The default implementation ignores the attribute set.
	* <p>
	* Note that some attributes may be set directly on the PrinterJob
	* by equivalent method calls, (for example), copies:
	* <code>setcopies(int)</code>, job name: <code>setJobName(String)</code>
	* and specifying media size and orientation though the
	* <code>PageFormat</code> object.
	* <p>
	* If a supported attribute-value is specified in this attribute set,
	* it will take precedence over the API settings for this print()
	* operation only.
	* The following behaviour is specified for PageFormat:
	* If a client uses the Printable interface, then the
	* <code>attributes</code> parameter to this method is examined
	* for attributes which specify media (by size), orientation, and
	* imageable area, and those are used to construct a new PageFormat
	* which is passed to the Printable object's print() method.
	* See {@link Printable} for an explanation of the required
	* behaviour of a Printable to ensure optimal printing via PrinterJob.
	* For clients of the Pageable interface, the PageFormat will always
	* be as supplied by that interface, on a per page basis.
	* <p>
	* These behaviours allow an application to directly pass the
	* user settings returned from
	* <code>printDialog(PrintRequestAttributeSet attributes</code> to
	* this print() method.
	* <p>
	*
	* @param attributes a set of attributes for the job
	* @exception PrinterException an error in the print system
	*            caused the job to be aborted.
	* @see Book
	* @see Pageable
	* @see Printable
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function print(attributes : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	/**
	* Sets the number of copies to be printed.
	* @param copies the number of copies to be printed
	* @see #getCopies
	*/
	@:overload @:public @:abstract public function setCopies(copies : Int) : Void;
	
	/**
	* Gets the number of copies to be printed.
	* @return the number of copies to be printed.
	* @see #setCopies
	*/
	@:overload @:public @:abstract public function getCopies() : Int;
	
	/**
	* Gets the name of the printing user.
	* @return the name of the printing user
	*/
	@:overload @:public @:abstract public function getUserName() : String;
	
	/**
	* Sets the name of the document to be printed.
	* The document name can not be <code>null</code>.
	* @param jobName the name of the document to be printed
	* @see #getJobName
	*/
	@:overload @:public @:abstract public function setJobName(jobName : String) : Void;
	
	/**
	* Gets the name of the document to be printed.
	* @return the name of the document to be printed.
	* @see #setJobName
	*/
	@:overload @:public @:abstract public function getJobName() : String;
	
	/**
	* Cancels a print job that is in progress.  If
	* {@link #print() print} has been called but has not
	* returned then this method signals
	* that the job should be cancelled at the next
	* chance. If there is no print job in progress then
	* this call does nothing.
	*/
	@:overload @:public @:abstract public function cancel() : Void;
	
	/**
	* Returns <code>true</code> if a print job is
	* in progress, but is going to be cancelled
	* at the next opportunity; otherwise returns
	* <code>false</code>.
	* @return <code>true</code> if the job in progress
	* is going to be cancelled; <code>false</code> otherwise.
	*/
	@:overload @:public @:abstract public function isCancelled() : Bool;
	
	
}
