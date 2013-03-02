package sun.swing;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PrintingStatus
{
	/**
	* Creates PrintingStatus instance
	*
	* @param parent a <code>Component</code> object to be used
	*               as parent component for PrintingStatus dialog
	* @param job    a <code>PrinterJob</code> object to be cancelled
	*               using this <code>PrintingStatus</code> dialog
	* @return a <code>PrintingStatus</code> object
	*/
	@:overload public static function createPrintingStatus(parent : java.awt.Component, job : java.awt.print.PrinterJob) : sun.swing.PrintingStatus;
	
	@:overload private function new(parent : java.awt.Component, job : java.awt.print.PrinterJob) : Void;
	
	/**
	* Shows PrintingStatus dialog.
	* if dialog is modal this method returns only
	* after <code>dispose()</code> was called otherwise returns immediately
	*
	* @param isModal <code>true</code> this dialog should be modal;
	*                <code>false</code> otherwise.
	* @see #dispose
	*/
	@:overload public function showModal(isModal : Bool) : Void;
	
	/**
	* Disposes modal PrintingStatus dialog
	*
	* @see #showModal(boolean)
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Returns whether the printng was aborted using this PrintingStatus
	*
	* @return whether the printng was aborted using this PrintingStatus
	*/
	@:overload public function isAborted() : Bool;
	
	/**
	* Returns printable which is used to track the current page being
	* printed in this PrintingStatus
	*
	* @param printable to be used to create notification printable
	* @return printable which is used to track the current page being
	*         printed in this PrintingStatus
	* @throws NullPointerException if <code>printable</code> is <code>null</code>
	*/
	@:overload public function createNotificationPrintable(printable : java.awt.print.Printable) : java.awt.print.Printable;
	
	
}
@:native('sun$swing$PrintingStatus$NotificationPrintable') @:internal extern class PrintingStatus_NotificationPrintable implements java.awt.print.Printable
{
	@:overload public function new(delegatee : java.awt.print.Printable) : Void;
	
	@:overload public function print(graphics : java.awt.Graphics, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	
}
