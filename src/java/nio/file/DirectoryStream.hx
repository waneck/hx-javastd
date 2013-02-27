package java.nio.file;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface DirectoryStream<T> extends java.io.Closeable extends java.lang.Iterable<T>
{
	/**
	* Returns the iterator associated with this {@code DirectoryStream}.
	*
	* @return  the iterator associated with this {@code DirectoryStream}
	*
	* @throws  IllegalStateException
	*          if this directory stream is closed or the iterator has already
	*          been returned
	*/
	@:overload public function iterator() : java.util.Iterator<T>;
	
	
}
/**
* An interface that is implemented by objects that decide if a directory
* entry should be accepted or filtered. A {@code Filter} is passed as the
* parameter to the {@link Files#newDirectoryStream(Path,DirectoryStream.Filter)}
* method when opening a directory to iterate over the entries in the
* directory.
*
* @param   <T>     the type of the directory entry
*
* @since 1.7
*/
@:require(java7) @:native('java$nio$file$DirectoryStream$Filter') extern interface DirectoryStream_Filter<T>
{
	/**
	* Decides if the given directory entry should be accepted or filtered.
	*
	* @param   entry
	*          the directory entry to be tested
	*
	* @return  {@code true} if the directory entry should be accepted
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public function accept(entry : T) : Bool;
	
	
}
