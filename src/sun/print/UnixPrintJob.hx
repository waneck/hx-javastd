package sun.print;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class UnixPrintJob implements javax.print.CancelablePrintJob
{
	@:overload public function getPrintService() : javax.print.PrintService;
	
	@:overload public function getAttributes() : javax.print.attribute.PrintJobAttributeSet;
	
	@:overload public function addPrintJobListener(listener : javax.print.event.PrintJobListener) : Void;
	
	@:overload public function removePrintJobListener(listener : javax.print.event.PrintJobListener) : Void;
	
	@:overload public function addPrintJobAttributeListener(listener : javax.print.event.PrintJobAttributeListener, attributes : javax.print.attribute.PrintJobAttributeSet) : Void;
	
	@:overload public function removePrintJobAttributeListener(listener : javax.print.event.PrintJobAttributeListener) : Void;
	
	@:overload public function print(doc : javax.print.Doc, attributes : javax.print.attribute.PrintRequestAttributeSet) : Void;
	
	@:overload public function printableJob(printable : java.awt.print.Printable) : Void;
	
	@:overload public function pageableJob(pageable : java.awt.print.Pageable) : Void;
	
	@:overload public function cancel() : Void;
	
	
}
@:native('sun$print$UnixPrintJob$PrinterOpener') @:internal extern class UnixPrintJob_PrinterOpener implements java.security.PrivilegedAction<Dynamic>
{
	@:overload public function run() : Dynamic;
	
	
}
@:native('sun$print$UnixPrintJob$PrinterSpooler') @:internal extern class UnixPrintJob_PrinterSpooler implements java.security.PrivilegedAction<Dynamic>
{
	@:overload public function run() : Dynamic;
	
	
}
