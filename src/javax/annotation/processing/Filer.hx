package javax.annotation.processing;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface Filer
{
	/**
	* Creates a new source file and returns an object to allow
	* writing to it.  The file's name and path (relative to the
	* {@linkplain StandardLocation#SOURCE_OUTPUT root output location
	* for source files}) are based on the type to be declared in that
	* file.  If more than one type is being declared, the name of the
	* principal top-level type (the public one, for example) should
	* be used.  A source file can also be created to hold information
	* about a package, including package annotations.  To create a
	* source file for a named package, have {@code name} be the
	* package's name followed by {@code ".package-info"}; to create a
	* source file for an unnamed package, use {@code "package-info"}.
	*
	* <p> Note that to use a particular {@linkplain
	* java.nio.charset.Charset charset} to encode the contents of the
	* file, an {@code OutputStreamWriter} with the chosen charset can
	* be created from the {@code OutputStream} from the returned
	* object. If the {@code Writer} from the returned object is
	* directly used for writing, its charset is determined by the
	* implementation.  An annotation processing tool may have an
	* {@code -encoding} flag or analogous option for specifying this;
	* otherwise, it will typically be the platform's default
	* encoding.
	*
	* <p>To avoid subsequent errors, the contents of the source file
	* should be compatible with the {@linkplain
	* ProcessingEnvironment#getSourceVersion source version} being used
	* for this run.
	*
	* @param name  canonical (fully qualified) name of the principal type
	*          being declared in this file or a package name followed by
	*          {@code ".package-info"} for a package information file
	* @param originatingElements type or package elements causally
	* associated with the creation of this file, may be elided or
	* {@code null}
	* @return a {@code JavaFileObject} to write the new source file
	* @throws FilerException if the same pathname has already been
	* created, the same type has already been created, or the name is
	* not valid for a type
	* @throws IOException if the file cannot be created
	*/
	@:overload public function createSourceFile(name : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.JavaFileObject;
	
	/**
	* Creates a new class file, and returns an object to allow
	* writing to it.  The file's name and path (relative to the
	* {@linkplain StandardLocation#CLASS_OUTPUT root output location
	* for class files}) are based on the name of the type being
	* written.  A class file can also be created to hold information
	* about a package, including package annotations.  To create a
	* class file for a named package, have {@code name} be the
	* package's name followed by {@code ".package-info"}; creating a
	* class file for an unnamed package is not supported.
	*
	* <p>To avoid subsequent errors, the contents of the class file
	* should be compatible with the {@linkplain
	* ProcessingEnvironment#getSourceVersion source version} being used
	* for this run.
	*
	* @param name binary name of the type being written or a package name followed by
	*          {@code ".package-info"} for a package information file
	* @param originatingElements type or package elements causally
	* associated with the creation of this file, may be elided or
	* {@code null}
	* @return a {@code JavaFileObject} to write the new class file
	* @throws FilerException if the same pathname has already been
	* created, the same type has already been created, or the name is
	* not valid for a type
	* @throws IOException if the file cannot be created
	*/
	@:overload public function createClassFile(name : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.JavaFileObject;
	
	/**
	* Creates a new auxiliary resource file for writing and returns a
	* file object for it.  The file may be located along with the
	* newly created source files, newly created binary files, or
	* other supported location.  The locations {@link
	* StandardLocation#CLASS_OUTPUT CLASS_OUTPUT} and {@link
	* StandardLocation#SOURCE_OUTPUT SOURCE_OUTPUT} must be
	* supported.  The resource may be named relative to some package
	* (as are source and class files), and from there by a relative
	* pathname.  In a loose sense, the full pathname of the new file
	* will be the concatenation of {@code location}, {@code pkg}, and
	* {@code relativeName}.
	*
	* <p>Files created via this method are not registered for
	* annotation processing, even if the full pathname of the file
	* would correspond to the full pathname of a new source file
	* or new class file.
	*
	* @param location location of the new file
	* @param pkg package relative to which the file should be named,
	*          or the empty string if none
	* @param relativeName final pathname components of the file
	* @param originatingElements type or package elements causally
	* associated with the creation of this file, may be elided or
	* {@code null}
	* @return a {@code FileObject} to write the new resource
	* @throws IOException if the file cannot be created
	* @throws FilerException if the same pathname has already been
	* created
	* @throws IllegalArgumentException for an unsupported location
	* @throws IllegalArgumentException if {@code relativeName} is not relative
	*/
	@:overload public function createResource(location : javax.tools.JavaFileManager.JavaFileManager_Location, pkg : java.lang.CharSequence, relativeName : java.lang.CharSequence, originatingElements : java.NativeArray<javax.lang.model.element.Element>) : javax.tools.FileObject;
	
	/**
	* Returns an object for reading an existing resource.  The
	* locations {@link StandardLocation#CLASS_OUTPUT CLASS_OUTPUT}
	* and {@link StandardLocation#SOURCE_OUTPUT SOURCE_OUTPUT} must
	* be supported.
	*
	* @param location location of the file
	* @param pkg package relative to which the file should be searched,
	*          or the empty string if none
	* @param relativeName final pathname components of the file
	* @return an object to read the file
	* @throws FilerException if the same pathname has already been
	* opened for writing
	* @throws IOException if the file cannot be opened
	* @throws IllegalArgumentException for an unsupported location
	* @throws IllegalArgumentException if {@code relativeName} is not relative
	*/
	@:overload public function getResource(location : javax.tools.JavaFileManager.JavaFileManager_Location, pkg : java.lang.CharSequence, relativeName : java.lang.CharSequence) : javax.tools.FileObject;
	
	
}
