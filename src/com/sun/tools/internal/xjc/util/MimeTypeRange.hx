package com.sun.tools.internal.xjc.util;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeTypeRange
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	public var majorType(default, null) : String;
	
	public var subType(default, null) : String;
	
	public var parameters(default, null) : java.util.Map<String, String>;
	
	/**
	* Each media-range MAY be followed by one or more accept-params,
	* beginning with the "q" parameter for indicating a relative quality
	* factor. The first "q" parameter (if any) separates the media-range
	* parameter(s) from the accept-params. Quality factors allow the user
	* or user agent to indicate the relative degree of preference for that
	* media-range, using the qvalue scale from 0 to 1 (section 3.9). The
	* default value is q=1.
	*/
	public var q(default, null) : Single;
	
	@:overload public static function parseRanges(s : String) : java.util.List<com.sun.tools.internal.xjc.util.MimeTypeRange>;
	
	@:overload public function new(s : String) : Void;
	
	@:overload public function toMimeType() : javax.activation.MimeType;
	
	@:overload public function toString() : String;
	
	public static var ALL(default, null) : com.sun.tools.internal.xjc.util.MimeTypeRange;
	
	/**
	* Creates a range by merging all the given types.
	*/
	@:overload public static function merge(types : java.util.Collection<com.sun.tools.internal.xjc.util.MimeTypeRange>) : com.sun.tools.internal.xjc.util.MimeTypeRange;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
