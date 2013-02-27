package java.lang;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UNIXProcess extends java.lang.Process
{
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	@:overload override public function getInputStream() : java.io.InputStream;
	
	@:overload override public function getErrorStream() : java.io.InputStream;
	
	@:overload @:synchronized override public function waitFor() : Int;
	
	@:overload @:synchronized override public function exitValue() : Int;
	
	@:overload override public function destroy() : Void;
	
	
}
/**
* The thread factory used to create "process reaper" daemon threads.
*/
@:native('java$lang$UNIXProcess$ProcessReaperThreadFactory') @:internal extern class UNIXProcess_ProcessReaperThreadFactory implements java.util.concurrent.ThreadFactory
{
	@:overload public function newThread(grimReaper : java.lang.Runnable) : java.lang.Thread;
	
	
}
/**
* A buffered input stream for a subprocess pipe file descriptor
* that allows the underlying file descriptor to be reclaimed when
* the process exits, via the processExited hook.
*
* This is tricky because we do not want the user-level InputStream to be
* closed until the user invokes close(), and we need to continue to be
* able to read any buffered data lingering in the OS pipe buffer.
*/
@:native('java$lang$UNIXProcess$ProcessPipeInputStream') @:internal extern class UNIXProcess_ProcessPipeInputStream extends java.io.BufferedInputStream
{
	
}
/**
* A buffered output stream for a subprocess pipe file descriptor
* that allows the underlying file descriptor to be reclaimed when
* the process exits, via the processExited hook.
*/
@:native('java$lang$UNIXProcess$ProcessPipeOutputStream') @:internal extern class UNIXProcess_ProcessPipeOutputStream extends java.io.BufferedOutputStream
{
	
}
