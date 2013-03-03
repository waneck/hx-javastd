package sun.misc;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
* A class to represent a regular expression.  Only handles '*'s.
* @author  James Gosling
*/
extern class Regexp
{
	/** if true then the matching process ignores case. */
	@:public public var ignoreCase : Bool;
	
	/*
	* regular expressions are carved into three regions: a constant string
	* prefix, a constant string suffix, and a series of floating strings in
	* between.  In the input regular expression, they are separated by *s
	*/
	@:public public var exp : String;
	
	@:public public var prefix : String;
	
	@:public public var suffix : String;
	
	@:public public var exact : Bool;
	
	@:public public var prefixLen : Int;
	
	@:public public var suffixLen : Int;
	
	@:public public var totalLen : Int;
	
	@:public public var mids : java.NativeArray<String>;
	
	/** Create a new regular expression object.  The regular expression
	is a series of constant strings separated by *s.  For example:
	<dl>
	<dt>*.gif       <dd>Matches any string that ends in ".gif".
	<dt>/tmp/*      <dd>Matches any string that starts with "/tmp/".
	<dt>/tmp/*.gif  <dd>Matches any string that starts with "/tmp/" and ends
	with ".gif".
	<dt>/tmp/*new*.gif <dd>Matches any string that starts with "/tmp/"
	and ends with ".gif" and has "new" somewhere in between.
	</dl>
	*/
	@:overload @:public public function new(s : String) : Void;
	
	
}
