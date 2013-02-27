package sun.print;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class UnixPrintServiceLookup extends javax.print.PrintServiceLookup implements sun.print.BackgroundServiceLookup implements java.lang.Runnable
{
	@:overload public function new() : Void;
	
	/* Want the PrintService which is default print service to have
	* equality of reference with the equivalent in list of print services
	* This isn't required by the API and there's a risk doing this will
	* lead people to assume its guaranteed.
	*/
	@:overload @:synchronized override public function getPrintServices() : java.NativeArray<javax.print.PrintService>;
	
	@:overload @:synchronized public function refreshServices() : Void;
	
	/*
	* If service attributes are specified then there must be additional
	* filtering.
	*/
	@:overload override public function getPrintServices(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.PrintService>;
	
	/*
	* return empty array as don't support multi docs
	*/
	@:overload override public function getMultiDocPrintServices(flavors : java.NativeArray<javax.print.DocFlavor>, attributes : javax.print.attribute.AttributeSet) : java.NativeArray<javax.print.MultiDocPrintService>;
	
	@:overload @:synchronized override public function getDefaultPrintService() : javax.print.PrintService;
	
	@:overload @:synchronized public function getServicesInbackground(listener : sun.print.BackgroundLookupListener) : Void;
	
	@:overload public function run() : Void;
	
	
}
@:native('sun$print$UnixPrintServiceLookup$PrinterChangeListener') @:internal extern class UnixPrintServiceLookup_PrinterChangeListener extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
