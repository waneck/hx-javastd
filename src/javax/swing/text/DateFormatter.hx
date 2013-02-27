package javax.swing.text;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
/**
* DateFormatter is an <code>InternationalFormatter</code> that does its
* formatting by way of an instance of <code>java.text.DateFormat</code>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see java.text.DateFormat
*
* @since 1.4
*/
@:require(java4) extern class DateFormatter extends javax.swing.text.InternationalFormatter
{
	/**
	* This is shorthand for
	* <code>new DateFormatter(DateFormat.getDateInstance())</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns a DateFormatter configured with the specified
	* <code>Format</code> instance.
	*
	* @param format Format used to dictate legal values
	*/
	@:overload public function new(format : java.text.DateFormat) : Void;
	
	/**
	* Sets the format that dictates the legal values that can be edited
	* and displayed.
	* <p>
	* If you have used the nullary constructor the value of this property
	* will be determined for the current locale by way of the
	* <code>Dateformat.getDateInstance()</code> method.
	*
	* @param format DateFormat instance used for converting from/to Strings
	*/
	@:overload public function setFormat(format : java.text.DateFormat) : Void;
	
	
}
