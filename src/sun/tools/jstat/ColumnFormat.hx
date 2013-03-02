package sun.tools.jstat;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* A class to represent the format for a column of data.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class ColumnFormat extends sun.tools.jstat.OptionFormat
{
	@:overload public function new(number : Int) : Void;
	
	/*
	* method to apply various validation rules to the ColumnFormat object.
	*/
	@:overload public function validate() : Void;
	
	@:overload public function setWidth(width : Int) : Void;
	
	@:overload public function setAlignment(align : sun.tools.jstat.Alignment) : Void;
	
	@:overload public function setScale(scale : sun.tools.jstat.Scale) : Void;
	
	@:overload public function setFormat(format : String) : Void;
	
	@:overload public function setHeader(header : String) : Void;
	
	@:overload public function getHeader() : String;
	
	@:overload public function getFormat() : String;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getAlignment() : sun.tools.jstat.Alignment;
	
	@:overload public function getScale() : sun.tools.jstat.Scale;
	
	@:overload public function getExpression() : sun.tools.jstat.Expression;
	
	@:overload public function setExpression(e : sun.tools.jstat.Expression) : Void;
	
	@:overload public function setPreviousValue(o : Dynamic) : Void;
	
	@:overload public function getPreviousValue() : Dynamic;
	
	@:overload public function printFormat(indentLevel : Int) : Void;
	
	@:overload public function getValue() : String;
	
	
}
