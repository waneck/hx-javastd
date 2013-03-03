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
extern class PrinterMakeAndModel extends javax.print.attribute.TextSyntax implements javax.print.attribute.PrintServiceAttribute
{
	/**
	* Constructs a new printer make and model attribute with the given make
	* and model string and locale.
	*
	* @param  makeAndModel  Printer make and model string.
	* @param  locale        Natural language of the text string. null
	* is interpreted to mean the default locale as returned
	* by <code>Locale.getDefault()</code>
	*
	* @exception  NullPointerException
	*    (unchecked exception) Thrown if <CODE>makeAndModel</CODE> is null.
	*/
	@:overload @:public public function new(makeAndModel : String, locale : java.util.Locale) : Void;
	
	/**
	* Returns whether this printer make and model attribute is equivalent to
	* the passed in object. To be equivalent, all of the following conditions
	* must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class PrinterMakeAndModel.
	* <LI>
	* This printer make and model attribute's underlying string and
	* <CODE>object</CODE>'s underlying string are equal.
	* <LI>
	* This printer make and model attribute's locale and
	* <CODE>object</CODE>'s locale are equal.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this printer
	*          make and model attribute, false otherwise.
	*/
	@:overload @:public override public function equals(object : Dynamic) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class PrinterMakeAndModel, the
	* category is class PrinterMakeAndModel itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class PrinterMakeAndModel, the
	* category name is <CODE>"printer-make-and-model"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	
}
