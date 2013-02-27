package sun.text;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ComposedCharIter
{
	/**
	* Constant that indicates the iteration has completed.
	* {@link #next} returns this value when there are no more composed characters
	* over which to iterate.
	*/
	public static var DONE(default, null) : Int;
	
	/**
	* Construct a new <tt>ComposedCharIter</tt>.  The iterator will return
	* all Unicode characters with canonical decompositions, excluding Korean
	* Hangul characters.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the next precomposed Unicode character.
	* Repeated calls to <tt>next</tt> return all of the precomposed characters defined
	* by Unicode, in ascending order.  After all precomposed characters have
	* been returned, {@link #hasNext} will return <tt>false</tt> and further calls
	* to <tt>next</tt> will return {@link #DONE}.
	*/
	@:overload public function next() : Int;
	
	/**
	* Returns the Unicode decomposition of the current character.
	* This method returns the decomposition of the precomposed character most
	* recently returned by {@link #next}.  The resulting decomposition is
	* affected by the settings of the options passed to the constructor.
	*/
	@:overload public function decomposition() : String;
	
	
}
