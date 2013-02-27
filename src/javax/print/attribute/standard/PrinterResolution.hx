package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PrinterResolution extends javax.print.attribute.ResolutionSyntax implements javax.print.attribute.DocAttribute implements javax.print.attribute.PrintRequestAttribute implements javax.print.attribute.PrintJobAttribute
{
	/**
	* Construct a new printer resolution attribute from the given items.
	*
	* @param  crossFeedResolution
	*     Cross feed direction resolution.
	* @param  feedResolution
	*     Feed direction resolution.
	* @param  units
	*    Unit conversion factor, e.g. <code>ResolutionSyntax.DPI</CODE>
	* or <code>ResolutionSyntax.>DPCM</CODE>.
	*
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>crossFeedResolution</CODE> <
	*     1 or <CODE>feedResolution</CODE> < 1 or <CODE>units</CODE> < 1.
	*/
	@:overload public function new(crossFeedResolution : Int, feedResolution : Int, units : Int) : Void;
	
	/**
	* Returns whether this printer resolution attribute is equivalent to the
	* passed in object. To be equivalent, all of the following conditions
	* must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class PrinterResolution.
	* <LI>
	* This attribute's cross feed direction resolution is equal to
	* <CODE>object</CODE>'s cross feed direction resolution.
	* <LI>
	* This attribute's feed direction resolution is equal to
	* <CODE>object</CODE>'s feed direction resolution.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this printer
	*          resolution attribute, false otherwise.
	*/
	@:overload override public function equals(object : Dynamic) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class PrinterResolution, the category is class PrinterResolution itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class PrinterResolution, the
	* category name is <CODE>"printer-resolution"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
