package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PollingWatchService extends sun.nio.fs.AbstractWatchService
{
	
}
/**
* Entry in directory cache to record file last-modified-time and tick-count
*/
@:native('sun$nio$fs$PollingWatchService$CacheEntry') @:internal extern class PollingWatchService_CacheEntry
{
	
}
/**
* WatchKey implementation that encapsulates a map of the entries of the
* entries in the directory. Polling the key causes it to re-scan the
* directory and queue keys when entries are added, modified, or deleted.
*/
@:native('sun$nio$fs$PollingWatchService$PollingWatchKey') @:internal extern class PollingWatchService_PollingWatchKey extends sun.nio.fs.AbstractWatchKey
{
	@:overload @:public override public function isValid() : Bool;
	
	@:overload @:public override public function cancel() : Void;
	
	
}
