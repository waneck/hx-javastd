package sun.print;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class IPPPrintService implements javax.print.PrintService implements sun.print.SunPrinterJobService
{
	@:public @:static @:final public static var debugPrint(default, null) : Bool;
	
	@:overload @:protected @:static private static function debug_println(str : String) : Void;
	
	/**
	* IPP Operation codes
	*/
	@:public @:static @:final public static var OP_GET_ATTRIBUTES(default, null) : String;
	
	@:public @:static @:final public static var OP_CUPS_GET_DEFAULT(default, null) : String;
	
	@:public @:static @:final public static var OP_CUPS_GET_PRINTERS(default, null) : String;
	
	@:overload @:public public function createPrintJob() : javax.print.DocPrintJob;
	
	@:overload @:public @:synchronized public function getSupportedAttributeValues(category : Class<javax.print.attribute.Attribute>, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Dynamic;
	
	@:overload @:public public function getUnsupportedAttributes(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : javax.print.attribute.AttributeSet;
	
	@:overload @:public @:synchronized public function getSupportedDocFlavors() : java.NativeArray<javax.print.DocFlavor>;
	
	@:overload @:public public function isDocFlavorSupported(flavor : javax.print.DocFlavor) : Bool;
	
	/**
	* Finds matching CustomMediaSizeName of given media.
	*/
	@:overload @:public public function findCustomMedia(media : javax.print.attribute.standard.MediaSizeName) : sun.print.CustomMediaSizeName;
	
	@:overload @:public @:synchronized public function getSupportedAttributeCategories() : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public public function isAttributeCategorySupported(category : Class<javax.print.attribute.Attribute>) : Bool;
	
	@:overload @:public @:synchronized public function getAttribute<T : javax.print.attribute.PrintServiceAttribute>(category : Class<T>) : T;
	
	@:overload @:public @:synchronized public function getAttributes() : javax.print.attribute.PrintServiceAttributeSet;
	
	@:overload @:public public function isIPPSupportedImages(mimeType : String) : Bool;
	
	@:overload @:public public function isAttributeValueSupported(attr : javax.print.attribute.Attribute, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Bool;
	
	@:overload @:public @:synchronized public function getDefaultAttributeValue(category : Class<javax.print.attribute.Attribute>) : Dynamic;
	
	@:overload @:public public function getServiceUIFactory() : javax.print.ServiceUIFactory;
	
	@:overload @:public public function wakeNotifier() : Void;
	
	@:overload @:public public function addPrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload @:public public function removePrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function usesClass(c : Class<Dynamic>) : Bool;
	
	@:overload @:public @:static public static function getIPPConnection(url : java.net.URL) : java.net.HttpURLConnection;
	
	@:overload @:public @:synchronized public function isPostscript() : Bool;
	
	@:overload @:public @:static public static function writeIPPRequest(os : java.io.OutputStream, operCode : String, attCl : java.NativeArray<sun.print.AttributeClass>) : Bool;
	
	@:overload @:public @:static public static function readIPPResponse(inputStream : java.io.InputStream) : java.NativeArray<java.util.HashMap<Dynamic, Dynamic>>;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('sun$print$IPPPrintService$ExtFinishing') @:internal extern class IPPPrintService_ExtFinishing extends javax.print.attribute.standard.Finishings
{
	
}
