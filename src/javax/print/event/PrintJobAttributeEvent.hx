package javax.print.event;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class PrintJobAttributeEvent extends javax.print.event.PrintEvent
{
	/**
	* Constructs a PrintJobAttributeEvent object.
	* @param source the print job generating  this event
	* @param attributes the attribute changes being reported
	* @throws IllegalArgumentException if <code>source</code> is
	*         <code>null</code>.
	*/
	@:overload public function new(source : javax.print.DocPrintJob, attributes : javax.print.attribute.PrintJobAttributeSet) : Void;
	
	/**
	* Determine the Print Job to which this print job event pertains.
	*
	* @return  Print Job object.
	*/
	@:overload public function getPrintJob() : javax.print.DocPrintJob;
	
	/**
	* Determine the printing attributes that changed and their new values.
	*
	* @return  Attributes containing the new values for the print job
	* attributes that changed. The returned set may not be modifiable.
	*/
	@:overload public function getAttributes() : javax.print.attribute.PrintJobAttributeSet;
	
	
}
