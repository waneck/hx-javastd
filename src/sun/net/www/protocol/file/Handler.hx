package sun.net.www.protocol.file;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Handler extends java.net.URLStreamHandler
{
	@:overload @:protected override private function parseURL(u : java.net.URL, spec : String, start : Int, limit : Int) : Void;
	
	@:overload @:public @:synchronized override public function openConnection(u : java.net.URL) : java.net.URLConnection;
	
	@:overload @:public @:synchronized override public function openConnection(u : java.net.URL, p : java.net.Proxy) : java.net.URLConnection;
	
	@:overload @:protected private function createFileURLConnection(u : java.net.URL, file : java.io.File) : java.net.URLConnection;
	
	/**
	* Compares the host components of two URLs.
	* @param u1 the URL of the first host to compare
	* @param u2 the URL of the second host to compare
	* @return  <tt>true</tt> if and only if they
	* are equal, <tt>false</tt> otherwise.
	*/
	@:overload @:protected override private function hostsEqual(u1 : java.net.URL, u2 : java.net.URL) : Bool;
	
	
}
