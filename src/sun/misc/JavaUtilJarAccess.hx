package sun.misc;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface JavaUtilJarAccess
{
	@:overload @:public public function jarFileHasClassPathAttribute(jar : java.util.jar.JarFile) : Bool;
	
	@:overload @:public public function getCodeSources(jar : java.util.jar.JarFile, url : java.net.URL) : java.NativeArray<java.security.CodeSource>;
	
	@:overload @:public public function getCodeSource(jar : java.util.jar.JarFile, url : java.net.URL, name : String) : java.security.CodeSource;
	
	@:overload @:public public function entryNames(jar : java.util.jar.JarFile, cs : java.NativeArray<java.security.CodeSource>) : java.util.Enumeration<String>;
	
	@:overload @:public public function entries2(jar : java.util.jar.JarFile) : java.util.Enumeration<java.util.jar.JarEntry>;
	
	@:overload @:public public function setEagerValidation(jar : java.util.jar.JarFile, eager : Bool) : Void;
	
	@:overload @:public public function getManifestDigests(jar : java.util.jar.JarFile) : java.util.List<Dynamic>;
	
	
}
