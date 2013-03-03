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
/**
* Factory for FileChannels and AsynchronousFileChannels
*/
@:internal extern class UnixChannelFactory
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Opens file based on parameters and options, returning a FileDescriptor
	* encapsulating the handle to the open file.
	*/
	@:overload @:protected @:static private static function open(dfd : Int, path : sun.nio.fs.UnixPath, pathForPermissionCheck : String, flags : sun.nio.fs.UnixChannelFactory.UnixChannelFactory_Flags, mode : Int) : java.io.FileDescriptor;
	
	
}
/**
* Represents the flags from a user-supplied set of open options.
*/
@:native('sun$nio$fs$UnixChannelFactory$Flags') extern class UnixChannelFactory_Flags
{
	
}
