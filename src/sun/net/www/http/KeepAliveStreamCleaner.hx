package sun.net.www.http;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class KeepAliveStreamCleaner extends java.util.LinkedList<KeepAliveCleanerEntry> implements java.lang.Runnable
{
	/**
	* This class is used to cleanup any remaining data that may be on a KeepAliveStream
	* so that the connection can be cached in the KeepAliveCache.
	* Instances of this class can be used as a FIFO queue for KeepAliveCleanerEntry objects.
	* Executing this Runnable removes each KeepAliveCleanerEntry from the Queue, reads
	* the reamining bytes on its KeepAliveStream, and if successful puts the connection in
	* the KeepAliveCache.
	*
	* @author Chris Hegarty
	*/
	@:protected @:static private static var MAX_DATA_REMAINING : Int;
	
	@:protected @:static private static var MAX_CAPACITY : Int;
	
	@:protected @:static @:final private static var TIMEOUT(default, null) : Int;
	
	@:overload @:public public function offer(e : KeepAliveCleanerEntry) : Bool;
	
	@:overload @:public public function run() : Void;
	
	
}
