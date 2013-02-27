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
extern class Severity extends javax.print.attribute.EnumSyntax implements javax.print.attribute.Attribute
{
	/**
	* Indicates that the {@link PrinterStateReason PrinterStateReason} is a
	* "report" (least severe). An implementation may choose to omit some or
	* all reports.
	* Some reports specify finer granularity about the printer state;
	* others serve as a precursor to a warning. A report must contain nothing
	* that could affect the printed output.
	*/
	public static var REPORT(default, null) : Severity;
	
	/**
	* Indicates that the {@link PrinterStateReason PrinterStateReason} is a
	* "warning." An implementation may choose to omit some or all warnings.
	* Warnings serve as a precursor to an error. A warning must contain
	* nothing  that prevents a job from completing, though in some cases the
	* output may be of lower quality.
	*/
	public static var WARNING(default, null) : Severity;
	
	/**
	* Indicates that the {@link PrinterStateReason PrinterStateReason} is an
	* "error" (most severe). An implementation must include all errors.
	* If this attribute contains one or more errors, the printer's
	* {@link PrinterState PrinterState} must be STOPPED.
	*/
	public static var ERROR(default, null) : Severity;
	
	/**
	* Construct a new severity enumeration value with the given integer
	* value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class Severity.
	*/
	@:overload override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class Severity.
	*/
	@:overload override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class Severity, the category is class Severity itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class Severit, the category name is <CODE>"severity"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
