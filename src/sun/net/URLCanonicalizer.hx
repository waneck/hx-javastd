package sun.net;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
* Helper class to map URL "abbreviations" to real URLs.
* The default implementation supports the following mappings:
*   ftp.mumble.bar/... => ftp://ftp.mumble.bar/...
*   gopher.mumble.bar/... => gopher://gopher.mumble.bar/...
*   other.name.dom/... => http://other.name.dom/...
*   /foo/... => file:/foo/...
*
* Full URLs (those including a protocol name) are passed through unchanged.
*
* Subclassers can override or extend this behavior to support different
* or additional canonicalization policies.
*
* @author      Steve Byrne
*/
extern class URLCanonicalizer
{
	/**
	* Creates the default canonicalizer instance.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Given a possibly abbreviated URL (missing a protocol name, typically),
	* this method's job is to transform that URL into a canonical form,
	* by including a protocol name and additional syntax, if necessary.
	*
	* For a correctly formed URL, this method should just return its argument.
	*/
	@:overload @:public public function canonicalize(simpleURL : String) : String;
	
	/**
	* Given a possibly abbreviated URL, this predicate function returns
	* true if it appears that the URL contains a protocol name
	*/
	@:overload @:public public function hasProtocolName(url : String) : Bool;
	
	/**
	* Returns true if the URL is just a single name, no periods or
	* slashes, false otherwise
	**/
	@:overload @:protected private function isSimpleHostName(url : String) : Bool;
	
	
}
