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
extern class JobImpressionsSupported extends javax.print.attribute.SetOfIntegerSyntax implements javax.print.attribute.SupportedValuesAttribute
{
	/**
	* Construct a new job impressions supported attribute containing a single
	* range of integers. That is, only those values of JobImpressions in the
	* one range are supported.
	*
	* @param  lowerBound  Lower bound of the range.
	* @param  upperBound  Upper bound of the range.
	*
	* @exception  IllegalArgumentException
	*     (Unchecked exception) Thrown if a null range is specified or if a
	*     non-null range is specified with <CODE>lowerBound</CODE> less than
	*     0.
	*/
	@:overload public function new(lowerBound : Int, upperBound : Int) : Void;
	
	/**
	* Returns whether this job impressions supported attribute is equivalent
	* to the passed in object. To be equivalent, all of the following
	* conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class JobImpressionsSupported.
	* <LI>
	* This job impressions supported attribute's members and
	* <CODE>object</CODE>'s members are the same.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this job
	*          impressions supported attribute, false otherwise.
	*/
	@:overload override public function equals(object : Dynamic) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class JobImpressionsSupported, the category is class
	* JobImpressionsSupported itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class JobImpressionsSupported, the category name is
	* <CODE>"job-impressions-supported"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}