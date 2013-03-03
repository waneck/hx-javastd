package sun.tools.jconsole.resources;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
* <p> This class represents the <code>ResourceBundle</code>
* for the following package(s):
*
* <ol>
* <li> sun.tools.jconsole
* </ol>
*
* <P>
* Subclasses must override <code>getContents0</code> and provide an array,
* where each item in the array consists of a <code>String</code> key,
* and either a <code>String</code> value associated with that key,
* or if the keys ends with ".mnemonic", an element
* representing a mnemomic keycode <code>int</code> or <code>char</code>.
*/
extern class JConsoleResources_ja extends sun.tools.jconsole.resources.JConsoleResources
{
	/**
	* Returns the contents of this <code>ResourceBundle</code>.
	*
	* <p>
	*
	* @return the contents of this <code>ResourceBundle</code>.
	*/
	@:overload @:protected override private function getContents0() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	@:overload @:public @:synchronized override public function getContents() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	
}
