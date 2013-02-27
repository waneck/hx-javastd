package sun.net.www.protocol.netdoc;
/*
* Copyright (c) 1996, 1998, Oracle and/or its affiliates. All rights reserved.
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
/*-
* netdoc urls point either into the local filesystem or externally
* through an http url, with network documents being preferred.  Useful for
* FAQs & other documents which are likely to be changing over time at the
* central site, and where the user will want the most recent edition.
*
* @author Steven B. Byrne
*/
extern class Handler extends java.net.URLStreamHandler
{
	/*
	* Attempt to find a load the given url using the default (network)
	* documentation location.  If that fails, use the local copy
	*/
	@:overload @:synchronized override public function openConnection(u : java.net.URL) : java.net.URLConnection;
	
	
}
