package java.text;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
/**
* <code>FieldPosition</code> is a simple class used by <code>Format</code>
* and its subclasses to identify fields in formatted output. Fields can
* be identified in two ways:
* <ul>
*  <li>By an integer constant, whose names typically end with
*      <code>_FIELD</code>. The constants are defined in the various
*      subclasses of <code>Format</code>.
*  <li>By a <code>Format.Field</code> constant, see <code>ERA_FIELD</code>
*      and its friends in <code>DateFormat</code> for an example.
* </ul>
* <p>
* <code>FieldPosition</code> keeps track of the position of the
* field within the formatted output with two indices: the index
* of the first character of the field and the index of the last
* character of the field.
*
* <p>
* One version of the <code>format</code> method in the various
* <code>Format</code> classes requires a <code>FieldPosition</code>
* object as an argument. You use this <code>format</code> method
* to perform partial formatting or to get information about the
* formatted output (such as the position of a field).
*
* <p>
* If you are interested in the positions of all attributes in the
* formatted string use the <code>Format</code> method
* <code>formatToCharacterIterator</code>.
*
* @author      Mark Davis
* @see         java.text.Format
*/
extern class FieldPosition
{
	/**
	* Creates a FieldPosition object for the given field.  Fields are
	* identified by constants, whose names typically end with _FIELD,
	* in the various subclasses of Format.
	*
	* @see java.text.NumberFormat#INTEGER_FIELD
	* @see java.text.NumberFormat#FRACTION_FIELD
	* @see java.text.DateFormat#YEAR_FIELD
	* @see java.text.DateFormat#MONTH_FIELD
	*/
	@:overload @:public public function new(field : Int) : Void;
	
	/**
	* Creates a FieldPosition object for the given field constant. Fields are
	* identified by constants defined in the various <code>Format</code>
	* subclasses. This is equivalent to calling
	* <code>new FieldPosition(attribute, -1)</code>.
	*
	* @param attribute Format.Field constant identifying a field
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(attribute : java.text.Format.Format_Field) : Void;
	
	/**
	* Creates a <code>FieldPosition</code> object for the given field.
	* The field is identified by an attribute constant from one of the
	* <code>Field</code> subclasses as well as an integer field ID
	* defined by the <code>Format</code> subclasses. <code>Format</code>
	* subclasses that are aware of <code>Field</code> should give precedence
	* to <code>attribute</code> and ignore <code>fieldID</code> if
	* <code>attribute</code> is not null. However, older <code>Format</code>
	* subclasses may not be aware of <code>Field</code> and rely on
	* <code>fieldID</code>. If the field has no corresponding integer
	* constant, <code>fieldID</code> should be -1.
	*
	* @param attribute Format.Field constant identifying a field
	* @param fieldID integer constantce identifying a field
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(attribute : java.text.Format.Format_Field, fieldID : Int) : Void;
	
	/**
	* Returns the field identifier as an attribute constant
	* from one of the <code>Field</code> subclasses. May return null if
	* the field is specified only by an integer field ID.
	*
	* @return Identifier for the field
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getFieldAttribute() : java.text.Format.Format_Field;
	
	/**
	* Retrieves the field identifier.
	*/
	@:overload @:public public function getField() : Int;
	
	/**
	* Retrieves the index of the first character in the requested field.
	*/
	@:overload @:public public function getBeginIndex() : Int;
	
	/**
	* Retrieves the index of the character following the last character in the
	* requested field.
	*/
	@:overload @:public public function getEndIndex() : Int;
	
	/**
	* Sets the begin index.  For use by subclasses of Format.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setBeginIndex(bi : Int) : Void;
	
	/**
	* Sets the end index.  For use by subclasses of Format.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setEndIndex(ei : Int) : Void;
	
	/**
	* Overrides equals
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this FieldPosition.
	* @return a hash code value for this object
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return a string representation of this FieldPosition.
	* @return  a string representation of this object
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* An implementation of FieldDelegate that will adjust the begin/end
* of the FieldPosition if the arguments match the field of
* the FieldPosition.
*/
@:native('java$text$FieldPosition$Delegate') @:internal extern class FieldPosition_Delegate implements java.text.Format.Format_FieldDelegate
{
	@:overload @:public public function formatted(attr : java.text.Format.Format_Field, value : Dynamic, start : Int, end : Int, buffer : java.lang.StringBuffer) : Void;
	
	@:overload @:public public function formatted(fieldID : Int, attr : java.text.Format.Format_Field, value : Dynamic, start : Int, end : Int, buffer : java.lang.StringBuffer) : Void;
	
	
}
