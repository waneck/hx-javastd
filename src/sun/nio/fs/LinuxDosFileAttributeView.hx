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
* Linux implementation of DosFileAttributeView for use on file systems such
* as ext3 that have extended attributes enabled and SAMBA configured to store
* DOS attributes.
*/
@:internal extern class LinuxDosFileAttributeView extends sun.nio.fs.UnixFileAttributeViews.UnixFileAttributeViews_Basic implements java.nio.file.attribute.DosFileAttributeView
{
	@:overload override public function name() : String;
	
	@:overload override public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload override public function readAttributes(attributes : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	@:overload override public function readAttributes() : java.nio.file.attribute.DosFileAttributes;
	
	@:overload public function setReadOnly(value : Bool) : Void;
	
	@:overload public function setHidden(value : Bool) : Void;
	
	@:overload public function setArchive(value : Bool) : Void;
	
	@:overload public function setSystem(value : Bool) : Void;
	
	
}
