package javax.print;
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
extern class StreamPrintServiceFactory
{
	/**
	* Locates factories for print services that can be used with
	* a print job to output a stream of data in the
	* format specified by {@code outputMimeType}.
	* <p>
	* The {@code outputMimeType} parameter describes the document type that
	* you want to create, whereas the {@code flavor} parameter describes the
	* format in which the input data will be provided by the application
	* to the {@code StreamPrintService}.
	* <p>
	* Although null is an acceptable value to use in the lookup of stream
	* printing services, it's typical to search for a particular
	* desired format, such as Postscript(TM).
	* <p>
	* @param flavor of the input document type - null means match all
	* types.
	* @param outputMimeType representing the required output format, used to
	* identify suitable stream printer factories. A value of null means
	* match all formats.
	* @return - matching factories for stream print service instance,
	*           empty if no suitable factories could be located.
	*/
	@:overload @:public @:static public static function lookupStreamPrintServiceFactories(flavor : javax.print.DocFlavor, outputMimeType : String) : java.NativeArray<javax.print.StreamPrintServiceFactory>;
	
	/** Queries the factory for the document format that is emitted
	* by printers obtained from this factory.
	*
	* @return the output format described as a mime type.
	*/
	@:overload @:public @:abstract public function getOutputFormat() : String;
	
	/**
	* Queries the factory for the document flavors that can be accepted
	* by printers obtained from this factory.
	* @return array of supported doc flavors.
	*/
	@:overload @:public @:abstract public function getSupportedDocFlavors() : java.NativeArray<javax.print.DocFlavor>;
	
	/**
	* Returns a <code>StreamPrintService</code> that can print to
	* the specified output stream.
	* The output stream is created and managed by the application.
	* It is the application's responsibility to close the stream and
	* to ensure that this Printer is not reused.
	* The application should not close this stream until any print job
	* created from the printer is complete. Doing so earlier may generate
	* a <code>PrinterException</code> and an event indicating that the
	* job failed.
	* <p>
	* Whereas a <code>PrintService</code> connected to a physical printer
	* can be reused,
	* a <code>StreamPrintService</code> connected to a stream cannot.
	* The underlying <code>StreamPrintService</code> may be disposed by
	* the print system with
	* the {@link StreamPrintService#dispose() dispose} method
	* before returning from the
	* {@link DocPrintJob#print(Doc, javax.print.attribute.PrintRequestAttributeSet) print}
	* method of <code>DocPrintJob</code> so that the print system knows
	* this printer is no longer usable.
	* This is equivalent to a physical printer going offline - permanently.
	* Applications may supply a null print stream to create a queryable
	* service. It is not valid to create a PrintJob for such a stream.
	* Implementations which allocate resources on construction should examine
	* the stream and may wish to only allocate resources if the stream is
	* non-null.
	* <p>
	* @param out destination stream for generated output.
	* @return a PrintService which will generate the format specified by the
	* DocFlavor supported by this Factory.
	*/
	@:overload @:public @:abstract public function getPrintService(out : java.io.OutputStream) : javax.print.StreamPrintService;
	
	
}
/**
* A <code>StreamPrintServiceFactory</code> is the factory for
* {@link StreamPrintService} instances,
* which can print to an output stream in a particular
* document format described as a mime type.
* A typical output document format may be Postscript(TM).
* <p>
* This class is implemented by a service and located by the
* implementation using the
* <a href="../../../technotes/guides/jar/jar.html#Service Provider">
* SPI JAR File specification</a>.
* <p>
* Applications locate instances of this class by calling the
* {@link #lookupStreamPrintServiceFactories(DocFlavor, String)} method.
* <p>
* Applications can use a <code>StreamPrintService</code> obtained from a
* factory in place of a <code>PrintService</code> which represents a
* physical printer device.
*/
@:native('javax$print$StreamPrintServiceFactory$Services') @:internal extern class StreamPrintServiceFactory_Services
{
	
}
