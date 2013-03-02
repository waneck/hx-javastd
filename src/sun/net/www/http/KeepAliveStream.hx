package sun.net.www.http;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeepAliveStream extends sun.net.www.MeteredStream implements sun.net.www.http.Hurryable
{
	private var queuedForCleanup : Bool;
	
	/**
	* Constructor
	*/
	@:overload public function new(is : java.io.InputStream, pi : sun.net.ProgressSource, expected : haxe.Int64, hc : sun.net.www.http.HttpClient) : Void;
	
	/**
	* Attempt to cache this connection
	*/
	@:overload override public function close() : Void;
	
	/* we explicitly do not support mark/reset */
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function mark(limit : Int) : Void;
	
	@:overload override public function reset() : Void;
	
	@:overload @:synchronized public function hurry() : Bool;
	
	@:overload private function remainingToRead() : haxe.Int64;
	
	@:overload private function setClosed() : Void;
	
	
}
@:internal extern class KeepAliveCleanerEntry
{
	@:overload public function new(kas : sun.net.www.http.KeepAliveStream, hc : sun.net.www.http.HttpClient) : Void;
	
	@:overload private function getKeepAliveStream() : sun.net.www.http.KeepAliveStream;
	
	@:overload private function getHttpClient() : sun.net.www.http.HttpClient;
	
	@:overload private function setQueuedForCleanup() : Void;
	
	@:overload private function getQueuedForCleanup() : Bool;
	
	
}
