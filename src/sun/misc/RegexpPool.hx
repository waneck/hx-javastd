package sun.misc;
/*
* Copyright (c) 1995, 2001, Oracle and/or its affiliates. All rights reserved.
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
* A class to represent a pool of regular expressions.  A string
* can be matched against the whole pool all at once.  It is much
* faster than doing individual regular expression matches one-by-one.
*
* @see java.misc.RegexpTarget
* @author  James Gosling
*/
extern class RegexpPool
{
	@:overload @:public public function new() : Void;
	
	/**
	* Add a regular expression to the pool of regular expressions.
	* @param   re  The regular expression to add to the pool.
	For now, only handles strings that either begin or end with
	a '*'.
	* @param   ret The object to be returned when this regular expression is
	matched.  If ret is an instance of the RegexpTarget class, ret.found
	is called with the string fragment that matched the '*' as its
	parameter.
	* @exception REException error
	*/
	@:overload @:public public function add(re : String, ret : Dynamic) : Void;
	
	/**
	* Replace the target for the regular expression with a different
	* target.
	*
	* @param   re  The regular expression to be replaced in the pool.
	*      For now, only handles strings that either begin or end with
	*      a '*'.
	* @param   ret The object to be returned when this regular expression is
	*      matched.  If ret is an instance of the RegexpTarget class, ret.found
	*      is called with the string fragment that matched the '*' as its
	*      parameter.
	*/
	@:overload @:public public function replace(re : String, ret : Dynamic) : Void;
	
	/**
	* Delete the regular expression and its target.
	* @param re The regular expression to be deleted from the pool.
	*           must begin or end with a '*'
	* @return target - the old target.
	*/
	@:overload @:public public function delete(re : String) : Dynamic;
	
	/** Search for a match to a string & return the object associated
	with it with the match.  When multiple regular expressions
	would match the string, the best match is returned first.
	The next best match is returned the next time matchNext is
	called.
	@param s    The string to match against the regular expressions
	in the pool.
	@return     null on failure, otherwise the object associated with
	the regular expression when it was added to the pool.
	If the object is an instance of RegexpTarget, then
	the return value is the result from calling
	return.found(string_that_matched_wildcard).
	*/
	@:overload @:public public function match(s : String) : Dynamic;
	
	/** Identical to match except that it will only find matches to
	regular expressions that were added to the pool <i>after</i>
	the last regular expression that matched in the last call
	to match() or matchNext() */
	@:overload @:public public function matchNext(s : String) : Dynamic;
	
	/** Resets the pool so that the next call to matchNext looks
	at all regular expressions in the pool.  match(s); is equivalent
	to reset(); matchNext(s);
	<p><b>Multithreading note:</b> reset/nextMatch leave state in the
	regular expression pool.  If multiple threads could be using this
	pool this way, they should be syncronized to avoid race hazards.
	match() was done in such a way that there are no such race
	hazards: multiple threads can be matching in the same pool
	simultaneously. */
	@:overload @:public public function reset() : Void;
	
	/** Print this pool to standard output */
	@:overload @:public public function print(out : java.io.PrintStream) : Void;
	
	
}
@:internal extern class RegexpNode
{
	
}
